## 2.3.0

* Updated `xml` to 6.3.0
* Updated `collection` to 1.15.2
* Updated `intl` to 0.18.1

## 2.2.0

* Updated `xml` to 6.1.0
* Updated `timezone` to 0.9.0

## 2.1.4

* Fixed http request lifecycle

## 2.1.3

* Fixed the attachment creation for Exchange 2013 

## 2.1.2

* Added `MemberStatus` field to `EmailMessage` entity

## 2.1.1

* Fixed the html escaping in the text streams

## 2.1.0

* Added stream notifications
* Fixed the DateTime decoding
* Fixed the parsing of multiline body

## 2.0.0

* Migrated to stream XML processing

## 1.2.7

* Fixed the autodiscovery response parsing with gzip/deflate encoding

## 1.2.6

* Disabled the auto uncompress in the built-in HTTP client

## 1.2.5

* Added gzip encoding support
* Added deflate encoding support

## 1.2.4

* Updated dependencies
* Fixed `PropertyDefinitionBase.toString` implementation

## 1.2.3

* Added the `IHttpClientFactory` to provide ability to configure the HttpClient before request

## 1.2.2

* Fixed the `abbreviation` field for the latest time zone package

## 1.2.1

* Fixed the pre authentication flow

## 1.2.0

* Migrated to the stable Dart 2.12

## 1.2.0-nullsafety.6

* Fixed the http client lifecycle

## 1.2.0-nullsafety.5

* Extracted the http client to the http web request

## 1.2.0-nullsafety.4

* Fixed the timeout exception

## 1.2.0-nullsafety.3

* Fixed the basic authorization

## 1.2.0-nullsafety.2

* Added OAuth2 credentials

## 1.2.0-nullsafety.1

* Made the complex property fields non-nullable
* Made the Service property non-nullable
* Made the Item property non-nullable

## 1.2.0-nullsafety.0

* **BREAKING**: opt into the null safety
* Upgraded the Dart SDK constraints to `>=2.12.0-0 <3.0.0`

## 1.1.8

* Upgraded the Dart SDK to 2.10
* Removed the "dotenv" package from dependencies

## 1.1.7

* Added the MAPI converter for Long type

## 1.1.6

* Fixed serialization of `PhysicalAddressEntry`

## 1.1.5

* Fixed the `Attachment.ContentId` property
* Improved HTTP client lifecycle

## 1.1.4

* Added a stacktrace for most exceptions

## 1.1.3

* Fixed the `toString` methods for all exceptions

## 1.1.2

* Fixed the properties loading for `Appointment`

## 1.1.1

* Added the inner stack trace to the ServiceRemoteException

## 1.1.0

* Updated the `xml` package to 4.2.0

## 1.0.25

* Fixed the parsing of extended property tag

## 1.0.24

* Fixed the dictionary properties updating
* Removed unsafe date conversion warnings

## 1.0.23

* Fixed the pulling of empty file attachments

## 1.0.22

* Added extended properties with `bool` and `int` types

## 1.0.21

* Added `MemberStatus` to `Contact`

## 1.0.20

* Added the conversation of enums to schema 
* Added the validation of exchange version

## 1.0.19

* Improved the server exceptions processing 

## 1.0.18

* Fixed the standard user parsing

## 1.0.17

* Fixed the permission parsing

## 1.0.16

* Make `FolderPermission` modifiable

## 1.0.15

* Added `DirectoryPhoto` to `Contact`
* Added `StoreEntryId`, `InstanceKey` to `Item`
* Added `ConversationIndex` to `EmailMessage`
* Added `InstanceKey` to `Conversation`

## 1.0.14

* Fixed the `ReadElementValue`

## 1.0.13

* Added `EffectiveRights` to `Item`

## 1.0.12

* Fixed the ISO time duration parser

## 1.0.11

* Removed the custom basic auth warning

## 1.0.10

* Fixed the `flutter_test` framework conflicts 

## 1.0.9

* Fixed the properties loading for `Appointment` 

## 1.0.8

* Added 'ContactGroup'
* Fixed the `Importance` serialization

## 1.0.7

* Added `ReminderDueBy`, `IsReminderSet` to `Item`

## 1.0.6

* Fixed the `Item.Update` method

## 1.0.5

* Added the `EmptyFolder` method

## 1.0.4

* Fixed the `FileAttachment.Load` method

## 1.0.3

* Optimized imports with the `dartfmt` tool

## 1.0.2

* Reformatted code with the `dartfmt` tool

## 1.0.1

* Added an example of the library using

## 1.0.0

* Stabilized the public APIs

## 0.0.19

* Added `FileAsMapping` to `Contact`

## 0.0.18

* Removed the broken timezone from requests

## 0.0.17

* Fixed the XML attributes processing

## 0.0.16

* Fixed the requests validation

## 0.0.15

* Fixed the server version argument in requests

## 0.0.14

* Fixed extended properties with tags   

## 0.0.13

* Added the autodiscovery

## 0.0.12

* Removed `DIO` from dependencies
* Added `ImAddress` to `Contact`

## 0.0.11

* Added `PhoneNumber` to `Contact`
* Added `PhysicalAddress` to `Contact`

## 0.0.10

* Added `EmailAddress` to `Contact`

## 0.0.9

* Fixed the equals operators
* Added the `ResolveName` function
* Added the `FindItems` function

## 0.0.8

* Fixed the appointment CRUD operations

## 0.0.7

* Added the appointment schema

## 0.0.6

* Fixed the extended property updating
* Removed suppress messages for the schema definitions
* Added the contact group, conversation and person schemas

## 0.0.5

* Added the Item.Update function

## 0.0.4

* Added the trace feature

## 0.0.3

* Added a folder permission
