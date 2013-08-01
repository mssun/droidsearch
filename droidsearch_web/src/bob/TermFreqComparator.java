package bob;

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

import java.util.Comparator;

/**
 *
 *
 **/
public class TermFreqComparator implements Comparator
{
    public int compare(Object o, Object o1)
    {
        TermFreq termFreq = ((TermFreq) o);
        TermFreq termFreq1 = (TermFreq) o1;
        //int result = -(termFreq.getFreq() - termFreq1.getFreq());
        return (termFreq.getFreq() < termFreq1.getFreq()) ? 1 :
                ((termFreq.getFreq() > termFreq1.getFreq()) ? -1
                : (termFreq.getTerm().compareTo(termFreq1.getTerm()))); //else they are equal, so compare by term
    }
}