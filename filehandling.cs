using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;


namespace FileHandling

{
    internal class FileHandling
    {
        public void ReadFile()
        {
            FileStream fileStream = new FileStream(@"C:\", FileMode.Open, FileAccess.Read);
            StreamReader reader = new StreamReader(fileStream);
            Console.WriteLine("ID\tSOURCE\t\tDESTINATION\tDATE\t\tTIME\t\tSTATUS\t\tNETWORK");
            while (reader.Peek() > 0)
            {
                String DATE = " ";
                String TIME = " ";


                var id = reader.ReadLine();
                String[] IdStr = id.Split(':');
                String ID = IdStr[1];

                var source = reader.ReadLine();
                String[] SourceStr = source.Split(':');
                String SOURCE = SourceStr[1];

                var destination = reader.ReadLine();
                String[] DestinationStr = destination.Split(':');
                String DESTINATION = DestinationStr[1];

                String line = reader.ReadLine();
                if (line.StartsWith("Date"))
                {
                    DATE = line.Split(' ')[0].Split(':')[1];
                    TIME = line.Split(' ')[1] + " " + line.Split(' ')[2];

                }
                var status = reader.ReadLine();
                String[] StatusStr = status.Split(':');
                String STATUS = StatusStr[1];

                var net = reader.ReadLine();
                String[] NetworkStr = net.Split(':');
                String NETWORK = NetworkStr[1];

                //Case (1).....Display All Data ......

                Console.WriteLine(ID + "\t" + SOURCE + "\t" + DESTINATION + "\t" + DATE + "\t" + TIME + "\t" + STATUS + "\t\t" + NETWORK);

                //Case (2).....Display Data Of Status "Success" only......

                if (STATUS.Contains("Success"))
                {
                    Console.WriteLine(ID + "\t" + SOURCE + "\t" + DESTINATION + "\t" + DATE + "\t" + TIME + "\t" + STATUS + "\t\t" + NETWORK);
                }

                //Case (3).....Display Data Of Status "Failed" only......

                if (STATUS.Contains("Failed"))
                {
                    Console.WriteLine(ID + "\t" + SOURCE + "\t" + DESTINATION + "\t" + DATE + "\t" + TIME + "\t" + STATUS + "\t\t" + NETWORK);
                }

                //Case (4).....Display Data Of Status "Dialled" only......

                if (STATUS.Contains("Dialled"))
                {
                    Console.WriteLine(ID + "\t" + SOURCE + "\t" + DESTINATION + "\t" + DATE + "\t" + TIME + "\t" + STATUS + "\t\t" + NETWORK);
                }

                //Case (5).....Display Data Of Status "Missed" only......

                if (STATUS.Contains("Missed"))
                {
                    Console.WriteLine(ID + "\t" + SOURCE + "\t" + DESTINATION + "\t" + DATE + "\t" + TIME + "\t" + STATUS + "\t\t" + NETWORK);
                }

                reader.ReadLine();

            }


        }
    }
}