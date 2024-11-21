using Antlr.Runtime.Misc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Net.Mail;
using System.Text;
using System.Threading;
using System.Web;

namespace WebApplication7.App_Start
{
    public class Mail
    {
        public void Submit_Msg(string name, string email, string mobile, string word, string option)
        {
            try
            {

                string mailbody = "Name : " + name + "\n Mobile : " + mobile + "\n Email : " + email + "\nService Requirement : " + option + "\n Description : " + word;
                string mailmessage = "Hi " + name + ",\r\n\r\nThanks for contacting Softcron Technology.\r\n\r\nSoftcron Technology is a company where you can get complete solution for your IT problems. Since its establishment, the company has achieved outstanding success in developing and delivering a stream of innovative products, services and solutions in the given field.SoftCron Technology consists of professionals in a range of 4 to 8 years of experience in this Industry. We have young & energetic experts working in almost all technologies & spheres of IT.\r\n\r\nSoftcron Technology provides following services:\r\nWeb Design\r\nWeb Development\r\nSoftware Development\r\nMobile App Development\r\nSearch Engine Optimization\r\nSearch Engine Marketing \r\nSearch Media Optimization \r\nPay Per Click \r\nBulk SMS Services\r\nMissed Call Services\r\nVoice Call Services \r\nBulk Email Services\r\n\r\nThanks & Regards \r\nSoftcron Technology \r\nWe Listen, We Discuss, We Develop\nEmail Id: info@softcron.com\r\nMobile No.+91-9044892448";
                MailMessage mail = new MailMessage();
                mail.From = new MailAddress("softcrontechnology@gmail.com", "Softcron Technology");
                mail.To.Add("info@softcron.com");
                mail.Subject = "Query sent by " + name + " On " + DateTime.Now;
                mail.CC.Add(new MailAddress("sales@softcron.com"));
                mail.Body = mailbody;
                MailMessage mail2 = new MailMessage();
                mail2.From = new MailAddress("softcrontechnology@gmail.com", "Softcron Technology");
                mail2.To.Add(email);
                mail2.Subject = "Thank You For Contacting Softcron Technology";
                mail2.Body = mailmessage;
                //Thread thread1 = new Thread(() => SendMail(mail));
                //Thread thread2 = new Thread(() => SendMail(mail2));
                //thread1.Start();
                //thread2.Start();

                SendMail(mail);
                SendMail(mail2);

                // Call Method 
                SendWhatsappMessage(name, mobile, option, word);
            }
            catch (Exception ex)
            {
                Console.Write(ex.Message);
            }
        }
        private void SendMail(MailMessage mail2)
        {
            SmtpClient client = new SmtpClient("smtp.gmail.com", 587); //Gmail smtp   
            System.Net.NetworkCredential basicCredential1 = new
            System.Net.NetworkCredential("softcrontechnology@gmail.com", "liii lvmw yosm cgbo");
            client.EnableSsl = true;
            client.UseDefaultCredentials = true;
            client.Credentials = basicCredential1;
            client.Send(mail2);

        }

        //Send Whatsapp Message Method
        public void SendWhatsappMessage(string name, string mobile, string service, string word)
        {
            string username = name;
            string mobileno = mobile;
            string servicename = service;
            string description = word;
            string apiUrl = $"https://wa.automize.in/api/iwh/ae5263ebaf465ced6f861622bd3f92c1?name={username}&service={servicename}&mobile={mobileno}&description={description}";


            using (HttpClient client = new HttpClient())
            {
                try
                {
                    string jsonContent = $"{{ \"name\": \"{username}\", \"service\": \"{servicename}\", \"mobile\": \"{mobileno}\", \"description\": \"{description}\", }}";

                    StringContent content = new StringContent(jsonContent, Encoding.UTF8, "application/json");

                    HttpResponseMessage response = client.PostAsync(apiUrl, content).Result;

                    if (response.IsSuccessStatusCode)
                    {
                        Console.Write("OK");
                    }
                }
                catch (Exception)
                {
                    throw;
                }
            }
        }
    }

}