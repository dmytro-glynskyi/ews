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
    /// Represents the ProfileInsightValue.
    /// </summary>
 class ProfileInsightValue extends InsightValue
    {
        /* private */ String fullName;
        /* private */ String firstName;
        /* private */ String lastName;
        /* private */ String emailAddress;
        /* private */ String avatar;
        /* private */ long joinedUtcTicks;
        /* private */ UserProfilePicture profilePicture;
        /* private */ String title;

        /// <summary>
        /// Gets the FullName
        /// </summary>
 String FullName
        {
            get
            {
                return this.fullName;
            }
        }

        /// <summary>
        /// Gets the FirstName
        /// </summary>
 String FirstName
        {
            get
            {
                return this.firstName;
            }
        }

        /// <summary>
        /// Gets the LastName
        /// </summary>
 String LastName
        {
            get
            {
                return this.lastName;
            }
        }

        /// <summary>
        /// Gets the EmailAddress
        /// </summary>
 String EmailAddress
        {
            get
            {
                return this.emailAddress;
            }
        }

        /// <summary>
        /// Gets the Avatar
        /// </summary>
 String Avatar
        {
            get
            {
                return this.avatar;
            }
        }

        /// <summary>
        /// Gets the JoinedUtcTicks
        /// </summary>
 long JoinedUtcTicks
        {
            get
            {
                return this.joinedUtcTicks;
            }
        }

        /// <summary>
        /// Gets the ProfilePicture
        /// </summary>
 UserProfilePicture ProfilePicture
        {
            get
            {
                return this.profilePicture;
            }
        }

        /// <summary>
        /// Gets the Title
        /// </summary>
 String Title
        {
            get
            {
                return this.title;
            }
        }

        /// <summary>
        /// Tries to read element from XML.
        /// </summary>
        /// <param name="reader">XML reader</param>
        /// <returns>Whether the element was read</returns>
@override
        bool TryReadElementFromXml(EwsServiceXmlReader reader)
        {
            switch (reader.LocalName)
            {
                case XmlElementNames.InsightSource:
                    this.InsightSource = reader.ReadElementValue<string>();
                    break;
                case XmlElementNames.UpdatedUtcTicks:
                    this.UpdatedUtcTicks = reader.ReadElementValue<long>();
                    break;
                case XmlElementNames.FullName:
                    this.fullName = reader.ReadElementValue<String>();
                    break;
                case XmlElementNames.FirstName:
                    this.firstName = reader.ReadElementValue<String>();
                    break;
                case XmlElementNames.LastName:
                    this.lastName = reader.ReadElementValue<String>();
                    break;
                case XmlElementNames.EmailAddress:
                    this.emailAddress = reader.ReadElementValue<String>();
                    break;
                case XmlElementNames.Avatar:
                    this.avatar = reader.ReadElementValue<String>();
                    break;
                case XmlElementNames.JoinedUtcTicks:
                    this.joinedUtcTicks = reader.ReadElementValue<long>();
                    break;
                case XmlElementNames.ProfilePicture:
                    var picture = new UserProfilePicture();
                    picture.LoadFromXml(reader, XmlNamespace.Types, XmlElementNames.ProfilePicture);
                    this.profilePicture = picture;
                    break;
                case XmlElementNames.Title:
                    this.title = reader.ReadElementValue<String>();
                    break;
                default:
                    return false;
            }

            return true;
        }
    }
