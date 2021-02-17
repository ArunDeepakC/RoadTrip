using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;

namespace EncryptDecryptDll
{
    public class Class1
    {
        static byte[] bytes = ASCIIEncoding.ASCII.GetBytes("cse44598");
        //A bytes binary array for encryption
        public static string Encrypt(string plaintext)  // encryption using DES
        {
            if (string.IsNullOrEmpty(plaintext))
            {
                throw new ArgumentNullException("The input string for encryption cannont be empty or null");
            }
            SymmetricAlgorithm symAlgo = DES.Create();  //Lib class
            MemoryStream stream = new MemoryStream();
            CryptoStream cStream = new CryptoStream(stream, symAlgo.CreateEncryptor(bytes, bytes), CryptoStreamMode.Write);
            StreamWriter sWriter = new StreamWriter(cStream);
            sWriter.Write(plaintext);
            sWriter.Flush();  //flush the string terminator in sWrite
            cStream.FlushFinalBlock();
            return Convert.ToBase64String(stream.GetBuffer(), 0, (int)stream.Length);
        }
        public static string Decrypt(string encryptedString)   // decryption using DES
        {
            if (string.IsNullOrEmpty(encryptedString))
            {
                throw new ArgumentNullException("The string for decryption cannot be empty or null");
            }
            SymmetricAlgorithm symAlgo = DES.Create();
            MemoryStream mestream = new MemoryStream(Convert.FromBase64String(encryptedString));
            CryptoStream cStream = new CryptoStream(mestream, symAlgo.CreateDecryptor(bytes, bytes), CryptoStreamMode.Read);
            StreamReader reader = new StreamReader(cStream);
            return reader.ReadLine();
        }
    }
}
