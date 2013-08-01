package bob;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.lucene.index.TermFreqVector;
import org.apache.lucene.index.TermPositionVector;

public class Feedback extends HttpServlet {
	protected static TermFreqComparator comparator = new TermFreqComparator();
	/**
	 * Constructor of the object.
	 */
	public Feedback() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

    protected Collection getTopTerms(TermPositionVector tpv, int numTermsToReturn)
    {
        String[] terms = tpv.getTerms();
        int [] freqs = tpv.getTermFrequencies();
        List result = new ArrayList(terms.length);
        for (int i = 0; i < terms.length; i++)
        {
            result.add(new TermFreq(terms[i], freqs[i], 0.0, tpv.getOffsets(i), tpv.getTermPositions(i)));
        }
        Collections.sort(result, comparator);
        if (numTermsToReturn < result.size())
        {
            result = result.subList(0, numTermsToReturn);
        }
        return result;
    }

    /**
     * Does not store offset information
     *
     * @param tfv
     * @param numTermsToReturn
     * @return A Collection of {@link org.cnlp.apachecon.search.TermFreq}s
     */
    protected Collection getTopTerms(TermFreqVector tfv, int numTermsToReturn)
    {
        String[] terms = tfv.getTerms();
        int [] freqs = tfv.getTermFrequencies();
        List result = new ArrayList(terms.length);
        for (int i = 0; i < terms.length; i++)
        {
            result.add(new TermFreq(terms[i], freqs[i]));
        }
        Collections.sort(result, comparator);
        if (numTermsToReturn < result.size())
        {
            result = result.subList(0, numTermsToReturn);
        }
        return result;
    }
	
	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
		out.println("  <BODY>");
		out.print("    This is ");
		out.print(this.getClass());
		out.println(", using the POST method");
		out.println("  </BODY>");
		out.println("</HTML>");
		out.flush();
		out.close();
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(req, resp);
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
