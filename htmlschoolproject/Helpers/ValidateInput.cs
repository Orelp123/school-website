using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace htmlschoolproject.Helpers
{
    public class ValidateInput
    {
        public static bool ValidLength(string input,int maxlen=30 , int minlen=4)
        {
            int len = input.Length;
            return len < maxlen && len > minlen;
            
        }

        
        
    }
}