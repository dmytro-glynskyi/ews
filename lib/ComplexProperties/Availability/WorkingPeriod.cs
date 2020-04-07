/*
 * Exchange Web Services Managed API
 *
 * Copyright (c) Microsoft Corporation
 * All rights reserved.
 *
 * MIT License
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy of this
 * software and associated documentation files (the "Software"), to deal in the Software
 * without restriction, including without limitation the rights to use, copy, modify, merge,
 * publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons
 * to whom the Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all copies or
 * substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED *AS IS*, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
 * INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR
 * PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE
 * FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
 * OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN THE SOFTWARE.
 */







    /// <summary>
    /// Represents a working period.
    /// </summary>
    class WorkingPeriod extends ComplexProperty
    {
        /* private */ Collection<DayOfTheWeek> daysOfWeek = new Collection<DayOfTheWeek>();
        /* private */ TimeSpan startTime;
        /* private */ TimeSpan endTime;

        /// <summary>
        /// Initializes a new instance of the <see cref="WorkingPeriod"/> class.
        /// </summary>
        WorkingPeriod()
            : super()
        {
        }

        /// <summary>
        /// Tries to read element from XML.
        /// </summary>
        /// <param name="reader">The reader.</param>
        /// <returns>True if appropriate element was read.</returns>
@override
        bool TryReadElementFromXml(EwsServiceXmlReader reader)
        {
            switch (reader.LocalName)
            {
                case XmlElementNames.DayOfWeek:
                    EwsUtilities.ParseEnumValueList<DayOfTheWeek>(
                        this.daysOfWeek,
                        reader.ReadElementValue<String>(),
                        ' ');
                    return true;
                case XmlElementNames.StartTimeInMinutes:
                    this.startTime = TimeSpan.FromMinutes(reader.ReadElementValue<int>());
                    return true;
                case XmlElementNames.EndTimeInMinutes:
                    this.endTime = TimeSpan.FromMinutes(reader.ReadElementValue<int>());
                    return true;
                default:
                    return false;
            }
        }

        /// <summary>
        /// Gets a collection of work days.
        /// </summary>
        Collection<DayOfTheWeek> DaysOfWeek
        {
            get { return this.daysOfWeek; }
        }

        /// <summary>
        /// Gets the start time of the period.
        /// </summary>
        TimeSpan StartTime
        {
            get { return this.startTime; }
        }

        /// <summary>
        /// Gets the end time of the period.
        /// </summary>
        TimeSpan EndTime
        {
            get { return this.endTime; }
        }
    }
