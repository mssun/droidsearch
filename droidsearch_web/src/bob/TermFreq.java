package bob;

import org.apache.lucene.index.TermVectorOffsetInfo;

/**
 * Copyright 2005 Center for Natural Language Processing
 * 
 *  Licensed under the Apache License, Version 2.0 (the "License");
 *  you may not use this file except in compliance with the License.
 *  You may obtain a copy of the License at
 *  http://www.apache.org/licenses/LICENSE-2.0
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.
 */


/**
 * Store term vector information
 *
 **/
public class TermFreq
{
    private String term;
    private int freq;
    private double weight = 0.0;
    private TermVectorOffsetInfo[] offsets;
    private int [] positions;
    /**
     * @param term
     * @param freq
     */
    public TermFreq(String term, int freq)
    {
        this(term, freq, 0.0, null, null);
    }

    public TermFreq(String term, int freq, double weight)
    {
        this(term, freq, weight, null, null);
    }

    public TermFreq(String term, int freq, double weight, TermVectorOffsetInfo[] offsets, int[] positions)
    {
        this.term = term;
        this.freq = freq;
        this.weight = weight;
        this.offsets = offsets;   
        this.positions = positions;
    }

    public int[] getPositions()
    {
        return positions;
    }

    public void setPositions(int[] positions)
    {
        this.positions = positions;
    }

    public boolean equals(Object o)
    {
        return term.equals(((TermFreq) o).term) && freq == ((TermFreq) o).freq;
    }

    public TermVectorOffsetInfo[] getOffsets()
    {
        return offsets;
    }

    public void setOffsets(TermVectorOffsetInfo[] offsets)
    {
        this.offsets = offsets;
    }

    /**
     * The weight of the given term for the document.  Must be calculated outside of this
     * class and set.
     *
     * @return The weight of the given term for the document vector.
     */
    public double getWeight()
    {
        return weight;
    }

    public void setWeight(double weight)
    {
        this.weight = weight;
    }

    public String getTerm()
    {
        return term;
    }

    public void setTerm(String term)
    {
        this.term = term;
    }

    public int getFreq()
    {
        return freq;
    }

    public void setFreq(int freq)
    {
        this.freq = freq;
    }


    public String toString()
    {
        return "TermFreq{" +
                "freq=" + freq +
                ", term='" + term + "'" +
                ", weight=" + weight +
                "}";
    }

}
