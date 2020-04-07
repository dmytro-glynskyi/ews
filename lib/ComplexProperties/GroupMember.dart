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

import 'package:ews/ComplexProperties/ComplexProperty.dart';
import 'package:ews/ComplexProperties/EmailAddress.dart';
import 'package:ews/Core/EwsServiceXmlReader.dart';
import 'package:ews/Core/EwsServiceXmlWriter.dart';
import 'package:ews/Core/EwsUtilities.dart';
import 'package:ews/Core/XmlAttributeNames.dart';
import 'package:ews/Core/XmlElementNames.dart';
import 'package:ews/Enumerations/MemberStatus.dart';
import 'package:ews/Enumerations/XmlNamespace.dart';

/// <summary>
/// Represents a group member.
/// </summary>
//    [RequiredServerVersion(ExchangeVersion.Exchange2010)]
class GroupMember extends ComplexProperty {
  /// <summary>
  /// AddressInformation field.
  /// </summary>
  /* private */ EmailAddress addressInformation;

  /// <summary>
  /// Status field.
  /// </summary>
  /* private */
  MemberStatus status;

  /// <summary>
  /// Member key field.
  /// </summary>
  /* private */
  String key;

  /// <summary>
  /// Initializes a new instance of the <see cref="GroupMember"/> class.
  /// </summary>
  GroupMember() : super() {
    // Key is assigned by server
    this.key = null;

    // Member status is calculated by server
    this.status = MemberStatus.Unrecognized;
  }

  /// <summary>
  /// Initializes a new instance of the <see cref="GroupMember"/> class.
  /// </summary>
  /// <param name="smtpAddress">The SMTP address of the member.</param>
// GroupMember.withSmtpAddress(String smtpAddress)
//            : this.AddressInformation = new EmailAddress.withEmailAddress(smtpAddress), this();

  /// <summary>
  /// Initializes a new instance of the <see cref="GroupMember"/> class.
  /// </summary>
  /// <param name="address">The address of the member.</param>
  /// <param name="routingType">The routing type of the address.</param>
  /// <param name="mailboxType">The mailbox type of the member.</param>
// GroupMember.withSmtpAddressAndRoutingTypeAndMailboxType(String address, String routingType, MailboxType mailboxType)
//            : this()
//        {
//            switch (mailboxType)
//            {
//                case MailboxType.PublicGroup:
//                case MailboxType.PublicFolder:
//                case MailboxType.Mailbox:
//                case MailboxType.Contact:
//                case MailboxType.OneOff:
//                    this.AddressInformation = new EmailAddress(null, address, routingType, mailboxType);
//                    break;
//
//                default:
//                    throw new ServiceLocalException("Strings.InvalidMailboxType");
//            }
//        }

  /// <summary>
  /// Initializes a new instance of the <see cref="GroupMember"/> class.
  /// </summary>
  /// <param name="smtpAddress">The SMTP address of the member.</param>
  /// <param name="mailboxType">The mailbox type of the member.</param>
// GroupMember.withSmtpAddressAndMailboxType(String smtpAddress, MailboxType mailboxType)
//            : this(smtpAddress, EmailAddress.SmtpRoutingType, mailboxType)
//        {
//        }

  /// <summary>
  /// Initializes a new instance of the <see cref="GroupMember"/> class.
  /// </summary>
  /// <param name="name">The name of the one-off member.</param>
  /// <param name="address">The address of the one-off member.</param>
  /// <param name="routingType">The routing type of the address.</param>
// GroupMember(String name, String address, String routingType)
//            : this()
//        {
//            this.AddressInformation = new EmailAddress(name, address, routingType, MailboxType.OneOff);
//        }

  /// <summary>
  /// Initializes a new instance of the <see cref="GroupMember"/> class.
  /// </summary>
  /// <param name="name">The name of the one-off member.</param>
  /// <param name="smtpAddress">The SMTP address of the one-off member.</param>
// GroupMember(String name, String smtpAddress)
//            : this(name, smtpAddress, EmailAddress.SmtpRoutingType)
//        {
//        }

  /// <summary>
  /// Initializes a new instance of the <see cref="GroupMember"/> class.
  /// </summary>
  /// <param name="contactGroupId">The Id of the contact group to link the member to.</param>
// GroupMember(ItemId contactGroupId)
//            : this()
//        {
//            this.AddressInformation = new EmailAddress(
//                null,
//                null,
//                null,
//                MailboxType.ContactGroup,
//                contactGroupId);
//        }

  /// <summary>
  /// Initializes a new instance of the <see cref="GroupMember"/> class.
  /// </summary>
  /// <param name="contactId">The Id of the contact member.</param>
  /// <param name="addressToLink">The Id of the contact to link the member to.</param>
// GroupMember(ItemId contactId, String addressToLink)
//            : this()
//        {
//            this.AddressInformation = new EmailAddress(
//                null,
//                addressToLink,
//                null,
//                MailboxType.Contact,
//                contactId);
//        }

  /// <summary>
  /// Initializes a new instance of the <see cref="GroupMember"/> class.
  /// </summary>
  /// <param name="addressInformation">The e-mail address of the member.</param>
// GroupMember.withEmailAddress(EmailAddress addressInformation)
//            : this()
//        {
//            this.AddressInformation = new EmailAddress.withEmailAddress(addressInformation);
//        }

  /// <summary>
  /// Initializes a new instance of the <see cref="GroupMember"/> class from another GroupMember instance.
  /// </summary>
  /// <param name="member">GroupMember class instance to copy.</param>
//        GroupMember.withGroupMember(GroupMember member)
//            : this()
//        {
//            EwsUtilities.ValidateParam(member, "member");
//            this.AddressInformation = new EmailAddress.withEmailAddress(member.AddressInformation);
//        }

  /// <summary>
  /// Initializes a new instance of the <see cref="GroupMember"/> class from a Contact instance indexed by the specified key.
  /// </summary>
  /// <param name="contact">The contact to link to.</param>
  /// <param name="emailAddressKey">The contact's e-mail address to link to.</param>
// GroupMember.withContactAndEmailAddressKey(Contact contact, EmailAddressKey emailAddressKey)
//            : this()
//        {
//            EwsUtilities.ValidateParam(contact, "contact");
//
//            EmailAddress emailAddress = contact.EmailAddresses[emailAddressKey];
//
//            this.AddressInformation = new EmailAddress.withEmailAddress(emailAddress);
//
//            this.addressInformation.Id = contact.Id;
//        }

  /// <summary>
  /// Gets the key of the member.
  /// </summary>
  String get Key => this.key;

  /// <summary>
  /// Gets the address information of the member.
  /// </summary>
  EmailAddress get AddressInformation => this.addressInformation;

  set AddressInformation(EmailAddress value) {
    if (this.addressInformation != null) {
      this.addressInformation.removeChangeEvent(this.AddressInformationChanged);
    }

    this.addressInformation = value;

    if (this.addressInformation != null) {
      this.addressInformation.addOnChangeEvent(this.AddressInformationChanged);
    }
  }

  /// <summary>
  /// Gets the status of the member.
  /// </summary>
  MemberStatus get Status => this.status;

  /// <summary>
  /// Reads the member Key attribute from XML.
  /// </summary>
  /// <param name="reader">The reader.</param>
  @override
  void ReadAttributesFromXml(EwsServiceXmlReader reader) {
    this.key = reader.ReadAttributeValue<String>(XmlAttributeNames.Key);
  }

  /// <summary>
  /// Tries to read Status or Mailbox elements from XML.
  /// </summary>
  /// <param name="reader">The reader.</param>
  /// <returns>True if element was read.</returns>
  @override
  bool TryReadElementFromXml(EwsServiceXmlReader reader) {
    switch (reader.LocalName) {
      case XmlElementNames.Status:
        this.status =
            EwsUtilities.Parse<MemberStatus>(reader.ReadElementValue<String>());
        return true;

      case XmlElementNames.Mailbox:
        this.AddressInformation = new EmailAddress();
        this.AddressInformation.LoadFromXml(reader, reader.LocalName);
        return true;

      default:
        return false;
    }
  }

  /// <summary>
  /// Writes the member key attribute to XML.
  /// </summary>
  /// <param name="writer">The writer.</param>
  @override
  void WriteAttributesToXml(EwsServiceXmlWriter writer) {
    // if this.key is null or empty, writer skips the attribute
    writer.WriteAttributeValue(XmlAttributeNames.Key, this.key);
  }

  /// <summary>
  /// Writes elements to XML.
  /// </summary>
  /// <param name="writer">The writer.</param>
  @override
  void WriteElementsToXml(EwsServiceXmlWriter writer) {
    // No need to write member Status back to server
    // Write only AddressInformation container element
    this.AddressInformation.WriteToXmlWithNamespace(
        writer, XmlNamespace.Types, XmlElementNames.Mailbox);
  }

  /// <summary>
  /// AddressInformation instance is changed.
  /// </summary>
  /// <param name="complexProperty">Changed property.</param>
  /* private */
  void AddressInformationChanged(ComplexProperty complexProperty) {
    this.Changed();
  }
}
