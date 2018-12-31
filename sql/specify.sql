-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : specify-mariadb
-- Généré le :  lun. 31 déc. 2018 à 09:39
-- Version du serveur :  10.2.20-MariaDB-1:10.2.20+maria~bionic
-- Version de PHP :  7.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `specify`
--

-- --------------------------------------------------------

--
-- Structure de la table `accession`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `accession` (
  `AccessionID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `AccessionCondition` varchar(255) DEFAULT NULL,
  `AccessionNumber` varchar(60) NOT NULL,
  `DateAccessioned` date DEFAULT NULL,
  `DateAcknowledged` date DEFAULT NULL,
  `DateReceived` date DEFAULT NULL,
  `Integer1` int(11) DEFAULT NULL,
  `Integer2` int(11) DEFAULT NULL,
  `Integer3` int(11) DEFAULT NULL,
  `Number1` float(20,10) DEFAULT NULL,
  `Number2` float(20,10) DEFAULT NULL,
  `Remarks` text DEFAULT NULL,
  `Status` varchar(32) DEFAULT NULL,
  `Text1` text DEFAULT NULL,
  `Text2` text DEFAULT NULL,
  `Text3` text DEFAULT NULL,
  `Text4` text DEFAULT NULL,
  `Text5` text DEFAULT NULL,
  `TotalValue` decimal(12,2) DEFAULT NULL,
  `Type` varchar(32) DEFAULT NULL,
  `VerbatimDate` varchar(50) DEFAULT NULL,
  `YesNo1` bit(1) DEFAULT NULL,
  `YesNo2` bit(1) DEFAULT NULL,
  `AddressOfRecordID` int(11) DEFAULT NULL,
  `DivisionID` int(11) NOT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `RepositoryAgreementID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `accessionagent`
--
-- Création :  lun. 31 déc. 2018 à 09:36
--

CREATE TABLE `accessionagent` (
  `AccessionAgentID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `Remarks` text DEFAULT NULL,
  `Role` varchar(50) NOT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `AccessionID` int(11) DEFAULT NULL,
  `AgentID` int(11) NOT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `RepositoryAgreementID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `accessionattachment`
--
-- Création :  lun. 31 déc. 2018 à 09:36
--

CREATE TABLE `accessionattachment` (
  `AccessionAttachmentID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `Ordinal` int(11) NOT NULL,
  `Remarks` text DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `AttachmentID` int(11) NOT NULL,
  `AccessionID` int(11) NOT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `accessionauthorization`
--
-- Création :  lun. 31 déc. 2018 à 09:36
--

CREATE TABLE `accessionauthorization` (
  `AccessionAuthorizationID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `Remarks` text DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `AccessionID` int(11) DEFAULT NULL,
  `RepositoryAgreementID` int(11) DEFAULT NULL,
  `PermitID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `address`
--
-- Création :  lun. 31 déc. 2018 à 09:36
--

CREATE TABLE `address` (
  `AddressID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Address2` varchar(255) DEFAULT NULL,
  `Address3` varchar(64) DEFAULT NULL,
  `Address4` varchar(64) DEFAULT NULL,
  `Address5` varchar(64) DEFAULT NULL,
  `City` varchar(64) DEFAULT NULL,
  `Country` varchar(64) DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  `Fax` varchar(50) DEFAULT NULL,
  `IsCurrent` bit(1) DEFAULT NULL,
  `IsPrimary` bit(1) DEFAULT NULL,
  `IsShipping` bit(1) DEFAULT NULL,
  `Ordinal` int(11) DEFAULT NULL,
  `Phone1` varchar(50) DEFAULT NULL,
  `Phone2` varchar(50) DEFAULT NULL,
  `PositionHeld` varchar(32) DEFAULT NULL,
  `PostalCode` varchar(32) DEFAULT NULL,
  `Remarks` text DEFAULT NULL,
  `RoomOrBuilding` varchar(50) DEFAULT NULL,
  `StartDate` date DEFAULT NULL,
  `State` varchar(64) DEFAULT NULL,
  `TypeOfAddr` varchar(32) DEFAULT NULL,
  `AgentID` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `addressofrecord`
--
-- Création :  lun. 31 déc. 2018 à 09:36
--

CREATE TABLE `addressofrecord` (
  `AddressOfRecordID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Address2` varchar(255) DEFAULT NULL,
  `City` varchar(64) DEFAULT NULL,
  `Country` varchar(64) DEFAULT NULL,
  `PostalCode` varchar(32) DEFAULT NULL,
  `Remarks` text DEFAULT NULL,
  `State` varchar(64) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `AgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `agent`
--
-- Création :  lun. 31 déc. 2018 à 09:36
--

CREATE TABLE `agent` (
  `AgentID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `Abbreviation` varchar(50) DEFAULT NULL,
  `AgentType` tinyint(4) NOT NULL,
  `DateOfBirth` date DEFAULT NULL,
  `DateOfBirthPrecision` tinyint(4) DEFAULT NULL,
  `DateOfDeath` date DEFAULT NULL,
  `DateOfDeathPrecision` tinyint(4) DEFAULT NULL,
  `DateType` tinyint(4) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `GUID` varchar(128) DEFAULT NULL,
  `Initials` varchar(8) DEFAULT NULL,
  `Interests` varchar(255) DEFAULT NULL,
  `JobTitle` varchar(50) DEFAULT NULL,
  `LastName` varchar(128) DEFAULT NULL,
  `MiddleInitial` varchar(50) DEFAULT NULL,
  `Remarks` text DEFAULT NULL,
  `Suffix` varchar(50) DEFAULT NULL,
  `Title` varchar(50) DEFAULT NULL,
  `URL` varchar(1024) DEFAULT NULL,
  `ParentOrganizationID` int(11) DEFAULT NULL,
  `DivisionID` int(11) DEFAULT NULL,
  `SpecifyUserID` int(11) DEFAULT NULL,
  `InstitutionTCID` int(11) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `CollectionCCID` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `CollectionTCID` int(11) DEFAULT NULL,
  `InstitutionCCID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `agentattachment`
--
-- Création :  lun. 31 déc. 2018 à 09:36
--

CREATE TABLE `agentattachment` (
  `AgentAttachmentID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `Ordinal` int(11) NOT NULL,
  `Remarks` text DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `AttachmentID` int(11) NOT NULL,
  `AgentID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `agentgeography`
--
-- Création :  lun. 31 déc. 2018 à 09:36
--

CREATE TABLE `agentgeography` (
  `AgentGeographyID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `Remarks` text DEFAULT NULL,
  `Role` varchar(64) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `GeographyID` int(11) NOT NULL,
  `AgentID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `agentspecialty`
--
-- Création :  lun. 31 déc. 2018 à 09:36
--

CREATE TABLE `agentspecialty` (
  `AgentSpecialtyID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `OrderNumber` int(11) NOT NULL,
  `SpecialtyName` varchar(64) NOT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `AgentID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `agentvariant`
--
-- Création :  lun. 31 déc. 2018 à 09:36
--

CREATE TABLE `agentvariant` (
  `AgentVariantID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `Country` varchar(2) DEFAULT NULL,
  `Language` varchar(2) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `VarType` tinyint(4) NOT NULL,
  `Variant` varchar(2) DEFAULT NULL,
  `AgentID` int(11) NOT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `appraisal`
--
-- Création :  lun. 31 déc. 2018 à 09:36
--

CREATE TABLE `appraisal` (
  `AppraisalID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `AppraisalDate` date NOT NULL,
  `AppraisalNumber` varchar(64) NOT NULL,
  `AppraisalValue` decimal(12,2) DEFAULT NULL,
  `MonetaryUnitType` varchar(8) DEFAULT NULL,
  `Notes` text DEFAULT NULL,
  `AgentID` int(11) NOT NULL,
  `AccessionID` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `attachment`
--
-- Création :  lun. 31 déc. 2018 à 09:36
--

CREATE TABLE `attachment` (
  `AttachmentID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `AttachmentLocation` varchar(128) DEFAULT NULL,
  `CaptureDevice` varchar(128) DEFAULT NULL,
  `CopyrightDate` varchar(64) DEFAULT NULL,
  `CopyrightHolder` varchar(64) DEFAULT NULL,
  `Credit` varchar(64) DEFAULT NULL,
  `DateImaged` varchar(64) DEFAULT NULL,
  `FileCreatedDate` date DEFAULT NULL,
  `GUID` varchar(128) DEFAULT NULL,
  `IsPublic` bit(1) NOT NULL,
  `License` varchar(64) DEFAULT NULL,
  `LicenseLogoUrl` varchar(256) DEFAULT NULL,
  `MetadataText` varchar(256) DEFAULT NULL,
  `MimeType` varchar(64) DEFAULT NULL,
  `OrigFilename` varchar(20000) NOT NULL,
  `Remarks` text DEFAULT NULL,
  `ScopeID` int(11) DEFAULT NULL,
  `ScopeType` tinyint(4) DEFAULT NULL,
  `SubjectOrientation` varchar(64) DEFAULT NULL,
  `Subtype` varchar(64) DEFAULT NULL,
  `TableID` smallint(6) NOT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Type` varchar(64) DEFAULT NULL,
  `Visibility` tinyint(4) DEFAULT NULL,
  `AttachmentImageAttributeID` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `CreatorID` int(11) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `VisibilitySetByID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `attachmentimageattribute`
--
-- Création :  lun. 31 déc. 2018 à 09:36
--

CREATE TABLE `attachmentimageattribute` (
  `AttachmentImageAttributeID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `CreativeCommons` varchar(500) DEFAULT NULL,
  `Height` int(11) DEFAULT NULL,
  `ImageType` varchar(80) DEFAULT NULL,
  `Magnification` double DEFAULT NULL,
  `MBImageID` int(11) DEFAULT NULL,
  `Number1` double DEFAULT NULL,
  `Number2` double DEFAULT NULL,
  `Remarks` text DEFAULT NULL,
  `Resolution` double DEFAULT NULL,
  `Text1` varchar(200) DEFAULT NULL,
  `Text2` varchar(200) DEFAULT NULL,
  `TimestampLastSend` datetime DEFAULT NULL,
  `TimestampLastUpdateCheck` datetime DEFAULT NULL,
  `ViewDescription` varchar(80) DEFAULT NULL,
  `Width` int(11) DEFAULT NULL,
  `YesNo1` bit(1) DEFAULT NULL,
  `YesNo2` bit(1) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `MorphBankViewID` int(11) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `attachmentmetadata`
--
-- Création :  lun. 31 déc. 2018 à 09:36
--

CREATE TABLE `attachmentmetadata` (
  `AttachmentMetadataID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `Name` varchar(64) NOT NULL,
  `Value` varchar(128) NOT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `AttachmentID` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `attachmenttag`
--
-- Création :  lun. 31 déc. 2018 à 09:36
--

CREATE TABLE `attachmenttag` (
  `AttachmentTagID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `Tag` varchar(64) NOT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `AttachmentID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `attributedef`
--
-- Création :  lun. 31 déc. 2018 à 09:36
--

CREATE TABLE `attributedef` (
  `AttributeDefID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `DataType` smallint(6) DEFAULT NULL,
  `FieldName` varchar(32) DEFAULT NULL,
  `TableType` smallint(6) DEFAULT NULL,
  `DisciplineID` int(11) NOT NULL,
  `PrepTypeID` int(11) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `author`
--
-- Création :  lun. 31 déc. 2018 à 09:36
--

CREATE TABLE `author` (
  `AuthorID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `OrderNumber` smallint(6) NOT NULL,
  `Remarks` text DEFAULT NULL,
  `AgentID` int(11) NOT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `ReferenceWorkID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `autonumberingscheme`
--
-- Création :  lun. 31 déc. 2018 à 09:36
--

CREATE TABLE `autonumberingscheme` (
  `AutoNumberingSchemeID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `FormatName` varchar(64) DEFAULT NULL,
  `IsNumericOnly` bit(1) NOT NULL,
  `SchemeClassName` varchar(64) DEFAULT NULL,
  `SchemeName` varchar(64) DEFAULT NULL,
  `TableNumber` int(11) NOT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `autonumsch_coll`
--
-- Création :  lun. 31 déc. 2018 à 09:36
--

CREATE TABLE `autonumsch_coll` (
  `CollectionID` int(11) NOT NULL,
  `AutoNumberingSchemeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `autonumsch_div`
--
-- Création :  lun. 31 déc. 2018 à 09:36
--

CREATE TABLE `autonumsch_div` (
  `DivisionID` int(11) NOT NULL,
  `AutoNumberingSchemeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `autonumsch_dsp`
--
-- Création :  lun. 31 déc. 2018 à 09:36
--

CREATE TABLE `autonumsch_dsp` (
  `DisciplineID` int(11) NOT NULL,
  `AutoNumberingSchemeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `borrow`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `borrow` (
  `BorrowID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `CollectionMemberID` int(11) NOT NULL,
  `BorrowDate` date DEFAULT NULL,
  `BorrowDatePrecision` tinyint(4) DEFAULT NULL,
  `CurrentDueDate` date DEFAULT NULL,
  `DateClosed` date DEFAULT NULL,
  `InvoiceNumber` varchar(50) NOT NULL,
  `IsClosed` bit(1) DEFAULT NULL,
  `IsFinancialResponsibility` bit(1) DEFAULT NULL,
  `Number1` float(20,10) DEFAULT NULL,
  `Number2` float(20,10) DEFAULT NULL,
  `NumberOfItemsBorrowed` int(11) DEFAULT NULL,
  `OriginalDueDate` date DEFAULT NULL,
  `ReceivedDate` date DEFAULT NULL,
  `Remarks` text DEFAULT NULL,
  `Text1` text DEFAULT NULL,
  `Text2` text DEFAULT NULL,
  `YesNo1` bit(1) DEFAULT NULL,
  `YesNo2` bit(1) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `AddressOfRecordID` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `borrowagent`
--
-- Création :  lun. 31 déc. 2018 à 09:36
--

CREATE TABLE `borrowagent` (
  `BorrowAgentID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `CollectionMemberID` int(11) NOT NULL,
  `Remarks` text DEFAULT NULL,
  `Role` varchar(32) NOT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `AgentID` int(11) NOT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `BorrowID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `borrowattachment`
--
-- Création :  lun. 31 déc. 2018 à 09:36
--

CREATE TABLE `borrowattachment` (
  `BorrowAttachmentID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `Ordinal` int(11) NOT NULL,
  `Remarks` text DEFAULT NULL,
  `BorrowID` int(11) NOT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `AttachmentID` int(11) NOT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `borrowmaterial`
--
-- Création :  lun. 31 déc. 2018 à 09:36
--

CREATE TABLE `borrowmaterial` (
  `BorrowMaterialID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `CollectionMemberID` int(11) NOT NULL,
  `Description` varchar(50) DEFAULT NULL,
  `InComments` text DEFAULT NULL,
  `MaterialNumber` varchar(50) NOT NULL,
  `OutComments` text DEFAULT NULL,
  `Quantity` smallint(6) DEFAULT NULL,
  `QuantityResolved` smallint(6) DEFAULT NULL,
  `QuantityReturned` smallint(6) DEFAULT NULL,
  `Text1` text DEFAULT NULL,
  `Text2` text DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `BorrowID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `borrowreturnmaterial`
--
-- Création :  lun. 31 déc. 2018 à 09:36
--

CREATE TABLE `borrowreturnmaterial` (
  `BorrowReturnMaterialID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `CollectionMemberID` int(11) NOT NULL,
  `Quantity` smallint(6) DEFAULT NULL,
  `Remarks` text DEFAULT NULL,
  `ReturnedDate` date DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `ReturnedByID` int(11) DEFAULT NULL,
  `BorrowMaterialID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `collectingevent`
--
-- Création :  lun. 31 déc. 2018 à 09:36
--

CREATE TABLE `collectingevent` (
  `CollectingEventID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  `EndDatePrecision` tinyint(4) DEFAULT NULL,
  `EndDateVerbatim` varchar(50) DEFAULT NULL,
  `EndTime` smallint(6) DEFAULT NULL,
  `GUID` varchar(128) DEFAULT NULL,
  `Integer1` int(11) DEFAULT NULL,
  `Integer2` int(11) DEFAULT NULL,
  `Method` varchar(50) DEFAULT NULL,
  `Remarks` text DEFAULT NULL,
  `ReservedInteger3` int(11) DEFAULT NULL,
  `ReservedInteger4` int(11) DEFAULT NULL,
  `ReservedText1` varchar(128) DEFAULT NULL,
  `ReservedText2` varchar(128) DEFAULT NULL,
  `SGRStatus` tinyint(4) DEFAULT NULL,
  `StartDate` date DEFAULT NULL,
  `StartDatePrecision` tinyint(4) DEFAULT NULL,
  `StartDateVerbatim` varchar(50) DEFAULT NULL,
  `StartTime` smallint(6) DEFAULT NULL,
  `StationFieldNumber` varchar(50) DEFAULT NULL,
  `StationFieldNumberModifier1` varchar(50) DEFAULT NULL,
  `StationFieldNumberModifier2` varchar(50) DEFAULT NULL,
  `StationFieldNumberModifier3` varchar(50) DEFAULT NULL,
  `Text1` text DEFAULT NULL,
  `Text2` text DEFAULT NULL,
  `Text3` text DEFAULT NULL,
  `Text4` text DEFAULT NULL,
  `Text5` text DEFAULT NULL,
  `VerbatimDate` varchar(50) DEFAULT NULL,
  `VerbatimLocality` text DEFAULT NULL,
  `Visibility` tinyint(4) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `CollectingTripID` int(11) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `VisibilitySetByID` int(11) DEFAULT NULL,
  `DisciplineID` int(11) NOT NULL,
  `LocalityID` int(11) DEFAULT NULL,
  `PaleoContextID` int(11) DEFAULT NULL,
  `CollectingEventAttributeID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `collectingeventattachment`
--
-- Création :  lun. 31 déc. 2018 à 09:36
--

CREATE TABLE `collectingeventattachment` (
  `CollectingEventAttachmentID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `CollectionMemberID` int(11) NOT NULL,
  `Ordinal` int(11) NOT NULL,
  `Remarks` text DEFAULT NULL,
  `CollectingEventID` int(11) NOT NULL,
  `AttachmentID` int(11) NOT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `collectingeventattr`
--
-- Création :  lun. 31 déc. 2018 à 09:36
--

CREATE TABLE `collectingeventattr` (
  `AttrID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `CollectionMemberID` int(11) NOT NULL,
  `DoubleValue` double DEFAULT NULL,
  `StrValue` varchar(255) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `AttributeDefID` int(11) NOT NULL,
  `CollectingEventID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `collectingeventattribute`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `collectingeventattribute` (
  `CollectingEventAttributeID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `Integer1` int(11) DEFAULT NULL,
  `Integer10` int(11) DEFAULT NULL,
  `Integer2` int(11) DEFAULT NULL,
  `Integer3` int(11) DEFAULT NULL,
  `Integer4` int(11) DEFAULT NULL,
  `Integer5` int(11) DEFAULT NULL,
  `Integer6` int(11) DEFAULT NULL,
  `Integer7` int(11) DEFAULT NULL,
  `Integer8` int(11) DEFAULT NULL,
  `Integer9` int(11) DEFAULT NULL,
  `Number1` float(20,10) DEFAULT NULL,
  `Number10` float(20,10) DEFAULT NULL,
  `Number11` float(20,10) DEFAULT NULL,
  `Number12` float(20,10) DEFAULT NULL,
  `Number13` float(20,10) DEFAULT NULL,
  `Number2` float(20,10) DEFAULT NULL,
  `Number3` float(20,10) DEFAULT NULL,
  `Number4` float(20,10) DEFAULT NULL,
  `Number5` float(20,10) DEFAULT NULL,
  `Number6` float(20,10) DEFAULT NULL,
  `Number7` float(20,10) DEFAULT NULL,
  `Number8` float(20,10) DEFAULT NULL,
  `Number9` float(20,10) DEFAULT NULL,
  `Remarks` text DEFAULT NULL,
  `Text1` text DEFAULT NULL,
  `Text10` varchar(50) DEFAULT NULL,
  `Text11` varchar(50) DEFAULT NULL,
  `Text12` varchar(50) DEFAULT NULL,
  `Text13` varchar(50) DEFAULT NULL,
  `Text14` varchar(50) DEFAULT NULL,
  `Text15` varchar(50) DEFAULT NULL,
  `Text16` varchar(50) DEFAULT NULL,
  `Text17` varchar(50) DEFAULT NULL,
  `Text2` text DEFAULT NULL,
  `Text3` text DEFAULT NULL,
  `Text4` varchar(100) DEFAULT NULL,
  `Text5` varchar(100) DEFAULT NULL,
  `Text6` varchar(50) DEFAULT NULL,
  `Text7` varchar(50) DEFAULT NULL,
  `Text8` varchar(50) DEFAULT NULL,
  `Text9` varchar(50) DEFAULT NULL,
  `YesNo1` bit(1) DEFAULT NULL,
  `YesNo2` bit(1) DEFAULT NULL,
  `YesNo3` bit(1) DEFAULT NULL,
  `YesNo4` bit(1) DEFAULT NULL,
  `YesNo5` bit(1) DEFAULT NULL,
  `HostTaxonID` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `DisciplineID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `collectingtrip`
--
-- Création :  lun. 31 déc. 2018 à 09:36
--

CREATE TABLE `collectingtrip` (
  `CollectingTripID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `CollectingTripName` varchar(64) DEFAULT NULL,
  `Cruise` varchar(250) DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  `EndDatePrecision` tinyint(4) DEFAULT NULL,
  `EndDateVerbatim` varchar(50) DEFAULT NULL,
  `EndTime` smallint(6) DEFAULT NULL,
  `Expedition` varchar(250) DEFAULT NULL,
  `Number1` int(11) DEFAULT NULL,
  `Number2` int(11) DEFAULT NULL,
  `Remarks` text DEFAULT NULL,
  `Sponsor` varchar(64) DEFAULT NULL,
  `StartDate` date DEFAULT NULL,
  `StartDatePrecision` tinyint(4) DEFAULT NULL,
  `StartDateVerbatim` varchar(50) DEFAULT NULL,
  `StartTime` smallint(6) DEFAULT NULL,
  `Text1` varchar(255) DEFAULT NULL,
  `Text2` varchar(128) DEFAULT NULL,
  `Text3` varchar(64) DEFAULT NULL,
  `Text4` varchar(64) DEFAULT NULL,
  `Vessel` varchar(250) DEFAULT NULL,
  `YesNo1` bit(1) DEFAULT NULL,
  `YesNo2` bit(1) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `DisciplineID` int(11) NOT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `collection`
--
-- Création :  lun. 31 déc. 2018 à 09:36
--

CREATE TABLE `collection` (
  `UserGroupScopeId` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `CatalogFormatNumName` varchar(64) NOT NULL,
  `Code` varchar(50) DEFAULT NULL,
  `collectionId` int(11) DEFAULT NULL,
  `CollectionName` varchar(50) DEFAULT NULL,
  `CollectionType` varchar(32) DEFAULT NULL,
  `DbContentVersion` varchar(32) DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `DevelopmentStatus` varchar(32) DEFAULT NULL,
  `EstimatedSize` int(11) DEFAULT NULL,
  `GUID` varchar(128) DEFAULT NULL,
  `InstitutionType` varchar(32) DEFAULT NULL,
  `IsEmbeddedCollectingEvent` bit(1) NOT NULL,
  `IsaNumber` varchar(24) DEFAULT NULL,
  `KingdomCoverage` varchar(32) DEFAULT NULL,
  `PreservationMethodType` varchar(32) DEFAULT NULL,
  `PrimaryFocus` varchar(32) DEFAULT NULL,
  `PrimaryPurpose` varchar(32) DEFAULT NULL,
  `RegNumber` varchar(24) DEFAULT NULL,
  `Remarks` text DEFAULT NULL,
  `Scope` text DEFAULT NULL,
  `WebPortalURI` varchar(255) DEFAULT NULL,
  `WebSiteURI` varchar(255) DEFAULT NULL,
  `DisciplineID` int(11) NOT NULL,
  `AdminContactID` int(11) DEFAULT NULL,
  `InstitutionNetworkID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `collectionobject`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `collectionobject` (
  `CollectionObjectID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `CollectionMemberID` int(11) NOT NULL,
  `AltCatalogNumber` varchar(64) DEFAULT NULL,
  `Availability` varchar(32) DEFAULT NULL,
  `CatalogNumber` varchar(32) DEFAULT NULL,
  `CatalogedDate` date DEFAULT NULL,
  `CatalogedDatePrecision` tinyint(4) DEFAULT NULL,
  `CatalogedDateVerbatim` varchar(32) DEFAULT NULL,
  `CountAmt` int(11) DEFAULT NULL,
  `Deaccessioned` bit(1) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `FieldNumber` varchar(50) DEFAULT NULL,
  `GUID` varchar(128) DEFAULT NULL,
  `Integer1` int(11) DEFAULT NULL,
  `Integer2` int(11) DEFAULT NULL,
  `InventoryDate` date DEFAULT NULL,
  `Modifier` varchar(50) DEFAULT NULL,
  `Name` varchar(64) DEFAULT NULL,
  `Notifications` varchar(32) DEFAULT NULL,
  `Number1` float(20,10) DEFAULT NULL,
  `Number2` float(20,10) DEFAULT NULL,
  `ObjectCondition` varchar(64) DEFAULT NULL,
  `OCR` text DEFAULT NULL,
  `ProjectNumber` varchar(64) DEFAULT NULL,
  `Remarks` text DEFAULT NULL,
  `ReservedInteger3` int(11) DEFAULT NULL,
  `ReservedInteger4` int(11) DEFAULT NULL,
  `ReservedText` varchar(128) DEFAULT NULL,
  `ReservedText2` varchar(128) DEFAULT NULL,
  `ReservedText3` varchar(128) DEFAULT NULL,
  `Restrictions` varchar(32) DEFAULT NULL,
  `SGRStatus` tinyint(4) DEFAULT NULL,
  `Text1` text DEFAULT NULL,
  `Text2` text DEFAULT NULL,
  `Text3` text DEFAULT NULL,
  `TotalValue` decimal(12,2) DEFAULT NULL,
  `Visibility` tinyint(4) DEFAULT NULL,
  `YesNo1` bit(1) DEFAULT NULL,
  `YesNo2` bit(1) DEFAULT NULL,
  `YesNo3` bit(1) DEFAULT NULL,
  `YesNo4` bit(1) DEFAULT NULL,
  `YesNo5` bit(1) DEFAULT NULL,
  `YesNo6` bit(1) DEFAULT NULL,
  `FieldNotebookPageID` int(11) DEFAULT NULL,
  `PaleoContextID` int(11) DEFAULT NULL,
  `CollectionID` int(11) NOT NULL,
  `VisibilitySetByID` int(11) DEFAULT NULL,
  `ContainerOwnerID` int(11) DEFAULT NULL,
  `InventorizedByID` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `ContainerID` int(11) DEFAULT NULL,
  `CollectionObjectAttributeID` int(11) DEFAULT NULL,
  `AccessionID` int(11) DEFAULT NULL,
  `AppraisalID` int(11) DEFAULT NULL,
  `CollectingEventID` int(11) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `CatalogerID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `collectionobjectattachment`
--
-- Création :  lun. 31 déc. 2018 à 09:36
--

CREATE TABLE `collectionobjectattachment` (
  `CollectionObjectAttachmentID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `CollectionMemberID` int(11) NOT NULL,
  `Ordinal` int(11) NOT NULL,
  `Remarks` text DEFAULT NULL,
  `CollectionObjectID` int(11) NOT NULL,
  `AttachmentID` int(11) NOT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `collectionobjectattr`
--
-- Création :  lun. 31 déc. 2018 à 09:36
--

CREATE TABLE `collectionobjectattr` (
  `AttrID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `CollectionMemberID` int(11) NOT NULL,
  `DoubleValue` double DEFAULT NULL,
  `StrValue` varchar(255) DEFAULT NULL,
  `CollectionObjectID` int(11) NOT NULL,
  `AttributeDefID` int(11) NOT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `collectionobjectattribute`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `collectionobjectattribute` (
  `CollectionObjectAttributeID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `CollectionMemberID` int(11) NOT NULL,
  `BottomDistance` float(20,10) DEFAULT NULL,
  `Direction` varchar(32) DEFAULT NULL,
  `DistanceUnits` varchar(16) DEFAULT NULL,
  `Integer1` int(11) DEFAULT NULL,
  `Integer10` int(11) DEFAULT NULL,
  `Integer2` int(11) DEFAULT NULL,
  `Integer3` int(11) DEFAULT NULL,
  `Integer4` int(11) DEFAULT NULL,
  `Integer5` int(11) DEFAULT NULL,
  `Integer6` int(11) DEFAULT NULL,
  `Integer7` int(11) DEFAULT NULL,
  `Integer8` int(11) DEFAULT NULL,
  `Integer9` int(11) DEFAULT NULL,
  `Number1` float(20,10) DEFAULT NULL,
  `Number10` float(20,10) DEFAULT NULL,
  `Number11` float(20,10) DEFAULT NULL,
  `Number12` float(20,10) DEFAULT NULL,
  `Number13` float(20,10) DEFAULT NULL,
  `Number14` float(20,10) DEFAULT NULL,
  `Number15` float(20,10) DEFAULT NULL,
  `Number16` float(20,10) DEFAULT NULL,
  `Number17` float(20,10) DEFAULT NULL,
  `Number18` float(20,10) DEFAULT NULL,
  `Number19` float(20,10) DEFAULT NULL,
  `Number2` float(20,10) DEFAULT NULL,
  `Number20` float(20,10) DEFAULT NULL,
  `Number21` float(20,10) DEFAULT NULL,
  `Number22` float(20,10) DEFAULT NULL,
  `Number23` float(20,10) DEFAULT NULL,
  `Number24` float(20,10) DEFAULT NULL,
  `Number25` float(20,10) DEFAULT NULL,
  `Number26` float(20,10) DEFAULT NULL,
  `Number27` float(20,10) DEFAULT NULL,
  `Number28` float(20,10) DEFAULT NULL,
  `Number29` float(20,10) DEFAULT NULL,
  `Number3` float(20,10) DEFAULT NULL,
  `Number30` int(11) DEFAULT NULL,
  `Number31` float(20,10) DEFAULT NULL,
  `Number32` float(20,10) DEFAULT NULL,
  `Number33` float(20,10) DEFAULT NULL,
  `Number34` float(20,10) DEFAULT NULL,
  `Number35` float(20,10) DEFAULT NULL,
  `Number36` float(20,10) DEFAULT NULL,
  `Number37` float(20,10) DEFAULT NULL,
  `Number38` float(20,10) DEFAULT NULL,
  `Number39` float(20,10) DEFAULT NULL,
  `Number4` float(20,10) DEFAULT NULL,
  `Number40` float(20,10) DEFAULT NULL,
  `Number41` float(20,10) DEFAULT NULL,
  `Number42` float(20,10) DEFAULT NULL,
  `Number5` float(20,10) DEFAULT NULL,
  `Number6` float(20,10) DEFAULT NULL,
  `Number7` float(20,10) DEFAULT NULL,
  `Number8` int(11) DEFAULT NULL,
  `Number9` float(20,10) DEFAULT NULL,
  `PositionState` varchar(32) DEFAULT NULL,
  `Remarks` text DEFAULT NULL,
  `Text1` text DEFAULT NULL,
  `Text10` varchar(50) DEFAULT NULL,
  `Text11` varchar(50) DEFAULT NULL,
  `Text12` varchar(50) DEFAULT NULL,
  `Text13` varchar(50) DEFAULT NULL,
  `Text14` varchar(50) DEFAULT NULL,
  `Text15` varchar(64) DEFAULT NULL,
  `Text16` text DEFAULT NULL,
  `Text17` text DEFAULT NULL,
  `Text18` text DEFAULT NULL,
  `Text19` text DEFAULT NULL,
  `Text2` text DEFAULT NULL,
  `Text20` text DEFAULT NULL,
  `Text21` text DEFAULT NULL,
  `Text22` text DEFAULT NULL,
  `Text23` text DEFAULT NULL,
  `Text24` text DEFAULT NULL,
  `Text25` text DEFAULT NULL,
  `Text26` text DEFAULT NULL,
  `Text27` text DEFAULT NULL,
  `Text28` text DEFAULT NULL,
  `Text29` text DEFAULT NULL,
  `Text3` text DEFAULT NULL,
  `Text30` text DEFAULT NULL,
  `Text4` varchar(50) DEFAULT NULL,
  `Text5` varchar(50) DEFAULT NULL,
  `Text6` varchar(100) DEFAULT NULL,
  `Text7` varchar(100) DEFAULT NULL,
  `Text8` varchar(50) DEFAULT NULL,
  `Text9` varchar(50) DEFAULT NULL,
  `TopDistance` float(20,10) DEFAULT NULL,
  `YesNo1` bit(1) DEFAULT NULL,
  `YesNo10` bit(1) DEFAULT NULL,
  `YesNo11` bit(1) DEFAULT NULL,
  `YesNo12` bit(1) DEFAULT NULL,
  `YesNo13` bit(1) DEFAULT NULL,
  `YesNo14` bit(1) DEFAULT NULL,
  `YesNo15` bit(1) DEFAULT NULL,
  `YesNo16` bit(1) DEFAULT NULL,
  `YesNo17` bit(1) DEFAULT NULL,
  `YesNo18` bit(1) DEFAULT NULL,
  `YesNo19` bit(1) DEFAULT NULL,
  `YesNo2` bit(1) DEFAULT NULL,
  `YesNo20` bit(1) DEFAULT NULL,
  `YesNo3` bit(1) DEFAULT NULL,
  `YesNo4` bit(1) DEFAULT NULL,
  `YesNo5` bit(1) DEFAULT NULL,
  `YesNo6` bit(1) DEFAULT NULL,
  `YesNo7` bit(1) DEFAULT NULL,
  `YesNo8` bit(1) DEFAULT NULL,
  `YesNo9` bit(1) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `collectionobjectcitation`
--
-- Création :  lun. 31 déc. 2018 à 09:36
--

CREATE TABLE `collectionobjectcitation` (
  `CollectionObjectCitationID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `CollectionMemberID` int(11) NOT NULL,
  `FigureNumber` varchar(50) DEFAULT NULL,
  `IsFigured` bit(1) DEFAULT NULL,
  `PageNumber` varchar(50) DEFAULT NULL,
  `PlateNumber` varchar(50) DEFAULT NULL,
  `Remarks` text DEFAULT NULL,
  `CollectionObjectID` int(11) NOT NULL,
  `ReferenceWorkID` int(11) NOT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `collectionrelationship`
--
-- Création :  lun. 31 déc. 2018 à 09:36
--

CREATE TABLE `collectionrelationship` (
  `CollectionRelationshipID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `Text1` varchar(32) DEFAULT NULL,
  `Text2` varchar(32) DEFAULT NULL,
  `RightSideCollectionID` int(11) NOT NULL,
  `LeftSideCollectionID` int(11) NOT NULL,
  `CollectionRelTypeID` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `collectionreltype`
--
-- Création :  lun. 31 déc. 2018 à 09:36
--

CREATE TABLE `collectionreltype` (
  `CollectionRelTypeID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `Name` varchar(32) DEFAULT NULL,
  `Remarks` varchar(4096) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `LeftSideCollectionID` int(11) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `RightSideCollectionID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `collector`
--
-- Création :  lun. 31 déc. 2018 à 09:36
--

CREATE TABLE `collector` (
  `CollectorID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `IsPrimary` bit(1) NOT NULL,
  `OrderNumber` int(11) NOT NULL,
  `Remarks` text DEFAULT NULL,
  `Text1` text DEFAULT NULL,
  `Text2` text DEFAULT NULL,
  `YesNo1` bit(1) DEFAULT NULL,
  `YesNo2` bit(1) DEFAULT NULL,
  `DivisionID` int(11) DEFAULT NULL,
  `CollectingEventID` int(11) NOT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `AgentID` int(11) NOT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `commonnametx`
--
-- Création :  lun. 31 déc. 2018 à 09:36
--

CREATE TABLE `commonnametx` (
  `CommonNameTxID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `Author` varchar(128) DEFAULT NULL,
  `Country` varchar(2) DEFAULT NULL,
  `Language` varchar(2) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Variant` varchar(2) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `TaxonID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `commonnametxcitation`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `commonnametxcitation` (
  `CommonNameTxCitationID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `Number1` float(20,10) DEFAULT NULL,
  `Number2` float(20,10) DEFAULT NULL,
  `Remarks` text DEFAULT NULL,
  `Text1` text DEFAULT NULL,
  `Text2` text DEFAULT NULL,
  `YesNo1` bit(1) DEFAULT NULL,
  `YesNo2` bit(1) DEFAULT NULL,
  `ReferenceWorkID` int(11) NOT NULL,
  `CommonNameTxID` int(11) NOT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `conservdescription`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `conservdescription` (
  `ConservDescriptionID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `BackgroundInfo` text DEFAULT NULL,
  `Composition` text DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `DisplayRecommendations` text DEFAULT NULL,
  `Height` float(20,10) DEFAULT NULL,
  `LightRecommendations` text DEFAULT NULL,
  `ObjLength` float(20,10) DEFAULT NULL,
  `OtherRecommendations` text DEFAULT NULL,
  `Remarks` text DEFAULT NULL,
  `ShortDesc` varchar(128) DEFAULT NULL,
  `Source` text DEFAULT NULL,
  `Units` varchar(16) DEFAULT NULL,
  `Width` float(20,10) DEFAULT NULL,
  `DivisionID` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `CollectionObjectID` int(11) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `conservdescriptionattachment`
--
-- Création :  lun. 31 déc. 2018 à 09:36
--

CREATE TABLE `conservdescriptionattachment` (
  `ConservDescriptionAttachmentID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `Ordinal` int(11) NOT NULL,
  `Remarks` text DEFAULT NULL,
  `ConservDescriptionID` int(11) NOT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `AttachmentID` int(11) NOT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `conservevent`
--
-- Création :  lun. 31 déc. 2018 à 09:36
--

CREATE TABLE `conservevent` (
  `ConservEventID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `AdvTestingExam` text DEFAULT NULL,
  `AdvTestingExamResults` text DEFAULT NULL,
  `CompletedComments` text DEFAULT NULL,
  `CompletedDate` date DEFAULT NULL,
  `CompletedDatePrecision` tinyint(4) DEFAULT 1,
  `ConditionReport` text DEFAULT NULL,
  `CuratorApprovalDate` date DEFAULT NULL,
  `CuratorApprovalDatePrecision` tinyint(4) DEFAULT 1,
  `ExamDate` date DEFAULT NULL,
  `ExamDatePrecision` tinyint(4) DEFAULT 1,
  `Number1` int(11) DEFAULT NULL,
  `Number2` int(11) DEFAULT NULL,
  `PhotoDocs` text DEFAULT NULL,
  `Remarks` text DEFAULT NULL,
  `Text1` varchar(64) DEFAULT NULL,
  `Text2` varchar(64) DEFAULT NULL,
  `TreatmentCompDate` date DEFAULT NULL,
  `TreatmentCompDatePrecision` tinyint(4) DEFAULT 1,
  `TreatmentReport` text DEFAULT NULL,
  `YesNo1` bit(1) DEFAULT NULL,
  `YesNo2` bit(1) DEFAULT NULL,
  `ExaminedByAgentID` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `CuratorID` int(11) DEFAULT NULL,
  `TreatedByAgentID` int(11) DEFAULT NULL,
  `ConservDescriptionID` int(11) NOT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `conserveventattachment`
--
-- Création :  lun. 31 déc. 2018 à 09:36
--

CREATE TABLE `conserveventattachment` (
  `ConservEventAttachmentID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `Ordinal` int(11) NOT NULL,
  `Remarks` text DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `ConservEventID` int(11) NOT NULL,
  `AttachmentID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `container`
--
-- Création :  lun. 31 déc. 2018 à 09:36
--

CREATE TABLE `container` (
  `ContainerID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `CollectionMemberID` int(11) NOT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Name` varchar(64) DEFAULT NULL,
  `Number` int(11) DEFAULT NULL,
  `Type` smallint(6) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `ParentID` int(11) DEFAULT NULL,
  `StorageID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `datatype`
--
-- Création :  lun. 31 déc. 2018 à 09:36
--

CREATE TABLE `datatype` (
  `DataTypeID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `deaccession`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `deaccession` (
  `DeaccessionID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `DeaccessionDate` date DEFAULT NULL,
  `DeaccessionNumber` varchar(50) DEFAULT NULL,
  `Number1` float(20,10) DEFAULT NULL,
  `Number2` float(20,10) DEFAULT NULL,
  `Remarks` text DEFAULT NULL,
  `Text1` text DEFAULT NULL,
  `Text2` text DEFAULT NULL,
  `Type` varchar(64) DEFAULT NULL,
  `YesNo1` bit(1) DEFAULT NULL,
  `YesNo2` bit(1) DEFAULT NULL,
  `AccessionID` int(11) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `deaccessionagent`
--
-- Création :  lun. 31 déc. 2018 à 09:36
--

CREATE TABLE `deaccessionagent` (
  `DeaccessionAgentID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `Remarks` text DEFAULT NULL,
  `Role` varchar(50) NOT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `AgentID` int(11) NOT NULL,
  `DeaccessionID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `deaccessionpreparation`
--
-- Création :  lun. 31 déc. 2018 à 09:36
--

CREATE TABLE `deaccessionpreparation` (
  `DeaccessionPreparationID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `Quantity` smallint(6) DEFAULT NULL,
  `Remarks` text DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `PreparationID` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `DeaccessionID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `determination`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `determination` (
  `DeterminationID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `CollectionMemberID` int(11) NOT NULL,
  `Addendum` varchar(16) DEFAULT NULL,
  `AlternateName` varchar(128) DEFAULT NULL,
  `Confidence` varchar(50) DEFAULT NULL,
  `DeterminedDate` date DEFAULT NULL,
  `DeterminedDatePrecision` tinyint(4) DEFAULT NULL,
  `FeatureOrBasis` varchar(50) DEFAULT NULL,
  `GUID` varchar(128) DEFAULT NULL,
  `IsCurrent` bit(1) NOT NULL,
  `Method` varchar(50) DEFAULT NULL,
  `NameUsage` varchar(64) DEFAULT NULL,
  `Number1` float(20,10) DEFAULT NULL,
  `Number2` float(20,10) DEFAULT NULL,
  `Qualifier` varchar(16) DEFAULT NULL,
  `Remarks` text DEFAULT NULL,
  `SubSpQualifier` varchar(16) DEFAULT NULL,
  `Text1` text DEFAULT NULL,
  `Text2` text DEFAULT NULL,
  `TypeStatusName` varchar(50) DEFAULT NULL,
  `VarQualifier` varchar(16) DEFAULT NULL,
  `YesNo1` bit(1) DEFAULT NULL,
  `YesNo2` bit(1) DEFAULT NULL,
  `DeterminerID` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `PreferredTaxonID` int(11) DEFAULT NULL,
  `CollectionObjectID` int(11) NOT NULL,
  `TaxonID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `determinationcitation`
--
-- Création :  lun. 31 déc. 2018 à 09:36
--

CREATE TABLE `determinationcitation` (
  `DeterminationCitationID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `CollectionMemberID` int(11) NOT NULL,
  `Remarks` text DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `ReferenceWorkID` int(11) NOT NULL,
  `DeterminationID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `discipline`
--
-- Création :  lun. 31 déc. 2018 à 09:36
--

CREATE TABLE `discipline` (
  `UserGroupScopeId` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `disciplineId` int(11) DEFAULT NULL,
  `IsPaleoContextEmbedded` bit(1) NOT NULL,
  `Name` varchar(64) DEFAULT NULL,
  `PaleoContextChildTable` varchar(50) DEFAULT NULL,
  `RegNumber` varchar(24) DEFAULT NULL,
  `Type` varchar(64) DEFAULT NULL,
  `GeographyTreeDefID` int(11) NOT NULL,
  `GeologicTimePeriodTreeDefID` int(11) NOT NULL,
  `DataTypeID` int(11) NOT NULL,
  `DivisionID` int(11) NOT NULL,
  `TaxonTreeDefID` int(11) DEFAULT NULL,
  `LithoStratTreeDefID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `division`
--
-- Création :  lun. 31 déc. 2018 à 09:36
--

CREATE TABLE `division` (
  `UserGroupScopeId` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `Abbrev` varchar(64) DEFAULT NULL,
  `AltName` varchar(128) DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `DisciplineType` varchar(64) DEFAULT NULL,
  `divisionId` int(11) DEFAULT NULL,
  `IconURI` varchar(255) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `RegNumber` varchar(24) DEFAULT NULL,
  `Remarks` text DEFAULT NULL,
  `Uri` varchar(255) DEFAULT NULL,
  `AddressID` int(11) DEFAULT NULL,
  `InstitutionID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `dnaprimer`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `dnaprimer` (
  `DNAPrimerID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `Integer1` int(11) DEFAULT NULL,
  `Integer2` int(11) DEFAULT NULL,
  `Number1` float(20,10) DEFAULT NULL,
  `Number2` float(20,10) DEFAULT NULL,
  `PrimerDesignator` varchar(64) DEFAULT NULL,
  `PrimerNameForward` varchar(64) DEFAULT NULL,
  `PrimerNameReverse` varchar(64) DEFAULT NULL,
  `PrimerReferenceCitationForward` varchar(300) DEFAULT NULL,
  `PrimerReferenceCitationReverse` varchar(300) DEFAULT NULL,
  `PrimerReferenceLinkForward` varchar(300) DEFAULT NULL,
  `PrimerReferenceLinkReverse` varchar(300) DEFAULT NULL,
  `PrimerSequenceForward` varchar(128) DEFAULT NULL,
  `PrimerSequenceReverse` varchar(128) DEFAULT NULL,
  `purificationMethod` varchar(255) DEFAULT NULL,
  `Remarks` text DEFAULT NULL,
  `ReservedInteger3` int(11) DEFAULT NULL,
  `ReservedInteger4` int(11) DEFAULT NULL,
  `ReservedNumber3` float(20,10) DEFAULT NULL,
  `ReservedNumber4` float(20,10) DEFAULT NULL,
  `ReservedText3` text DEFAULT NULL,
  `ReservedText4` text DEFAULT NULL,
  `Text1` text DEFAULT NULL,
  `Text2` text DEFAULT NULL,
  `YesNo1` bit(1) DEFAULT NULL,
  `YesNo2` bit(1) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `dnasequence`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `dnasequence` (
  `DnaSequenceID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `CollectionMemberID` int(11) NOT NULL,
  `AmbiguousResidues` int(11) DEFAULT NULL,
  `BOLDBarcodeID` varchar(32) DEFAULT NULL,
  `BOLDLastUpdateDate` date DEFAULT NULL,
  `BOLDSampleID` varchar(32) DEFAULT NULL,
  `BOLDTranslationMatrix` varchar(64) DEFAULT NULL,
  `CompA` int(11) DEFAULT NULL,
  `CompC` int(11) DEFAULT NULL,
  `CompG` int(11) DEFAULT NULL,
  `compT` int(11) DEFAULT NULL,
  `GenBankAccessionNumber` varchar(32) DEFAULT NULL,
  `GeneSequence` text DEFAULT NULL,
  `MoleculeType` varchar(32) DEFAULT NULL,
  `Number1` float(20,10) DEFAULT NULL,
  `Number2` float(20,10) DEFAULT NULL,
  `Number3` float(20,10) DEFAULT NULL,
  `Remarks` text DEFAULT NULL,
  `TargetMarker` varchar(32) DEFAULT NULL,
  `Text1` varchar(32) DEFAULT NULL,
  `Text2` varchar(32) DEFAULT NULL,
  `Text3` varchar(64) DEFAULT NULL,
  `TotalResidues` int(11) DEFAULT NULL,
  `YesNo1` bit(1) DEFAULT NULL,
  `YesNo2` bit(1) DEFAULT NULL,
  `YesNo3` bit(1) DEFAULT NULL,
  `AgentID` int(11) DEFAULT NULL,
  `MaterialSampleID` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `CollectionObjectID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `dnasequenceattachment`
--
-- Création :  lun. 31 déc. 2018 à 09:36
--

CREATE TABLE `dnasequenceattachment` (
  `DnaSequenceAttachmentId` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `Ordinal` int(11) NOT NULL,
  `Remarks` text DEFAULT NULL,
  `DnaSequenceID` int(11) NOT NULL,
  `AttachmentID` int(11) NOT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `dnasequencerunattachment`
--
-- Création :  lun. 31 déc. 2018 à 09:36
--

CREATE TABLE `dnasequencerunattachment` (
  `DnaSequencingRunAttachmentId` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `Ordinal` int(11) NOT NULL,
  `Remarks` text DEFAULT NULL,
  `AttachmentID` int(11) NOT NULL,
  `DnaSequencingRunID` int(11) NOT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `dnasequencingrun`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `dnasequencingrun` (
  `DNASequencingRunID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `CollectionMemberID` int(11) NOT NULL,
  `DryadDOI` varchar(256) DEFAULT NULL,
  `GeneSequence` text DEFAULT NULL,
  `Number1` float(20,10) DEFAULT NULL,
  `Number2` float(20,10) DEFAULT NULL,
  `Number3` float(20,10) DEFAULT NULL,
  `Ordinal` int(11) DEFAULT NULL,
  `PCRCocktailPrimer` bit(1) DEFAULT NULL,
  `PCRForwardPrimerCode` varchar(32) DEFAULT NULL,
  `PCRPrimerName` varchar(32) DEFAULT NULL,
  `PCRPrimerSequence5_3` varchar(64) DEFAULT NULL,
  `PCRReversePrimerCode` varchar(32) DEFAULT NULL,
  `ReadDirection` varchar(16) DEFAULT NULL,
  `Remarks` text DEFAULT NULL,
  `RunDate` date DEFAULT NULL,
  `ScoreFileName` varchar(32) DEFAULT NULL,
  `SequenceCocktailPrimer` bit(1) DEFAULT NULL,
  `SequencePrimerCode` varchar(32) DEFAULT NULL,
  `SequencePrimerName` varchar(32) DEFAULT NULL,
  `SequencePrimerSequence5_3` varchar(64) DEFAULT NULL,
  `SRAExperimentID` varchar(64) DEFAULT NULL,
  `SRARunID` varchar(64) DEFAULT NULL,
  `SRASubmissionID` varchar(64) DEFAULT NULL,
  `Text1` varchar(32) DEFAULT NULL,
  `Text2` varchar(32) DEFAULT NULL,
  `Text3` varchar(64) DEFAULT NULL,
  `TraceFileName` varchar(32) DEFAULT NULL,
  `YesNo1` bit(1) DEFAULT NULL,
  `YesNo2` bit(1) DEFAULT NULL,
  `YesNo3` bit(1) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `DNAPrimerID` int(11) DEFAULT NULL,
  `PreparedByAgentID` int(11) DEFAULT NULL,
  `DNASequenceID` int(11) NOT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `RunByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `dnasequencingruncitation`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `dnasequencingruncitation` (
  `DNASequencingRunCitationID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `Number1` float(20,10) DEFAULT NULL,
  `Number2` float(20,10) DEFAULT NULL,
  `Remarks` text DEFAULT NULL,
  `Text1` text DEFAULT NULL,
  `Text2` text DEFAULT NULL,
  `YesNo1` bit(1) DEFAULT NULL,
  `YesNo2` bit(1) DEFAULT NULL,
  `ReferenceWorkID` int(11) NOT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `DNASequencingRunID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `exchangein`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `exchangein` (
  `ExchangeInID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `Contents` text DEFAULT NULL,
  `DescriptionOfMaterial` varchar(120) DEFAULT NULL,
  `ExchangeDate` date DEFAULT NULL,
  `ExchangeInNumber` varchar(50) DEFAULT NULL,
  `Number1` float(20,10) DEFAULT NULL,
  `Number2` float(20,10) DEFAULT NULL,
  `QuantityExchanged` smallint(6) DEFAULT NULL,
  `Remarks` text DEFAULT NULL,
  `SrcGeography` varchar(32) DEFAULT NULL,
  `SrcTaxonomy` varchar(32) DEFAULT NULL,
  `Text1` text DEFAULT NULL,
  `Text2` text DEFAULT NULL,
  `YesNo1` bit(1) DEFAULT NULL,
  `YesNo2` bit(1) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `CatalogedByID` int(11) NOT NULL,
  `ReceivedFromOrganizationID` int(11) NOT NULL,
  `AddressOfRecordID` int(11) DEFAULT NULL,
  `DivisionID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `exchangeinprep`
--
-- Création :  lun. 31 déc. 2018 à 09:36
--

CREATE TABLE `exchangeinprep` (
  `ExchangeInPrepID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `Comments` text DEFAULT NULL,
  `DescriptionOfMaterial` varchar(255) DEFAULT NULL,
  `Number1` int(11) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `Text1` text DEFAULT NULL,
  `Text2` text DEFAULT NULL,
  `ExchangeInID` int(11) DEFAULT NULL,
  `PreparationID` int(11) DEFAULT NULL,
  `DisciplineID` int(11) NOT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `exchangeout`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `exchangeout` (
  `ExchangeOutID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `Contents` text DEFAULT NULL,
  `DescriptionOfMaterial` varchar(120) DEFAULT NULL,
  `ExchangeDate` date DEFAULT NULL,
  `ExchangeOutNumber` varchar(50) DEFAULT NULL,
  `Number1` float(20,10) DEFAULT NULL,
  `Number2` float(20,10) DEFAULT NULL,
  `QuantityExchanged` smallint(6) DEFAULT NULL,
  `Remarks` text DEFAULT NULL,
  `SrcGeography` varchar(32) DEFAULT NULL,
  `SrcTaxonomy` varchar(32) DEFAULT NULL,
  `Text1` text DEFAULT NULL,
  `Text2` text DEFAULT NULL,
  `YesNo1` bit(1) DEFAULT NULL,
  `YesNo2` bit(1) DEFAULT NULL,
  `CatalogedByID` int(11) NOT NULL,
  `DivisionID` int(11) NOT NULL,
  `SentToOrganizationID` int(11) NOT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `AddressOfRecordID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `exchangeoutprep`
--
-- Création :  lun. 31 déc. 2018 à 09:36
--

CREATE TABLE `exchangeoutprep` (
  `ExchangeOutPrepID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `Comments` text DEFAULT NULL,
  `DescriptionOfMaterial` varchar(255) DEFAULT NULL,
  `Number1` int(11) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `Text1` text DEFAULT NULL,
  `Text2` text DEFAULT NULL,
  `PreparationID` int(11) DEFAULT NULL,
  `ExchangeOutID` int(11) DEFAULT NULL,
  `DisciplineID` int(11) NOT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `exsiccata`
--
-- Création :  lun. 31 déc. 2018 à 09:36
--

CREATE TABLE `exsiccata` (
  `ExsiccataID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `Title` varchar(255) NOT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `ReferenceWorkID` int(11) NOT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `exsiccataitem`
--
-- Création :  lun. 31 déc. 2018 à 09:36
--

CREATE TABLE `exsiccataitem` (
  `ExsiccataItemID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `Fascicle` varchar(16) DEFAULT NULL,
  `Number` varchar(16) DEFAULT NULL,
  `ExsiccataID` int(11) NOT NULL,
  `CollectionObjectID` int(11) NOT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `fieldnotebook`
--
-- Création :  lun. 31 déc. 2018 à 09:36
--

CREATE TABLE `fieldnotebook` (
  `FieldNotebookID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  `Storage` varchar(64) DEFAULT NULL,
  `Name` varchar(32) DEFAULT NULL,
  `StartDate` date DEFAULT NULL,
  `CollectionID` int(11) NOT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `DisciplineID` int(11) NOT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `AgentID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `fieldnotebookattachment`
--
-- Création :  lun. 31 déc. 2018 à 09:36
--

CREATE TABLE `fieldnotebookattachment` (
  `FieldNotebookAttachmentId` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `Ordinal` int(11) NOT NULL,
  `Remarks` text DEFAULT NULL,
  `AttachmentID` int(11) NOT NULL,
  `FieldNotebookID` int(11) NOT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `fieldnotebookpage`
--
-- Création :  lun. 31 déc. 2018 à 09:36
--

CREATE TABLE `fieldnotebookpage` (
  `FieldNotebookPageID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `Description` varchar(128) DEFAULT NULL,
  `PageNumber` varchar(32) NOT NULL,
  `ScanDate` date DEFAULT NULL,
  `FieldNotebookPageSetID` int(11) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `DisciplineID` int(11) NOT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `fieldnotebookpageattachment`
--
-- Création :  lun. 31 déc. 2018 à 09:36
--

CREATE TABLE `fieldnotebookpageattachment` (
  `FieldNotebookPageAttachmentId` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `Ordinal` int(11) NOT NULL,
  `Remarks` text DEFAULT NULL,
  `AttachmentID` int(11) NOT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `FieldNotebookPageID` int(11) NOT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `fieldnotebookpageset`
--
-- Création :  lun. 31 déc. 2018 à 09:36
--

CREATE TABLE `fieldnotebookpageset` (
  `FieldNotebookPageSetID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `Description` varchar(128) DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  `Method` varchar(64) DEFAULT NULL,
  `OrderNumber` smallint(6) DEFAULT NULL,
  `StartDate` date DEFAULT NULL,
  `AgentID` int(11) DEFAULT NULL,
  `DisciplineID` int(11) NOT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `FieldNotebookID` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `fieldnotebookpagesetattachment`
--
-- Création :  lun. 31 déc. 2018 à 09:36
--

CREATE TABLE `fieldnotebookpagesetattachment` (
  `FieldNotebookPageSetAttachmentId` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `Ordinal` int(11) NOT NULL,
  `Remarks` text DEFAULT NULL,
  `AttachmentID` int(11) NOT NULL,
  `FieldNotebookPageSetID` int(11) NOT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `fundingagent`
--
-- Création :  lun. 31 déc. 2018 à 09:36
--

CREATE TABLE `fundingagent` (
  `FundingAgentID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `IsPrimary` bit(1) NOT NULL,
  `OrderNumber` int(11) NOT NULL,
  `Remarks` text DEFAULT NULL,
  `Type` varchar(32) DEFAULT NULL,
  `CollectingTripID` int(11) NOT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `AgentID` int(11) NOT NULL,
  `DivisionID` int(11) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `geocoorddetail`
--
-- Création :  lun. 31 déc. 2018 à 09:36
--

CREATE TABLE `geocoorddetail` (
  `GeoCoordDetailID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `ErrorPolygon` text DEFAULT NULL,
  `GeoRefAccuracy` double DEFAULT NULL,
  `GeoRefAccuracyUnits` varchar(20) DEFAULT NULL,
  `GeoRefCompiledDate` datetime DEFAULT NULL,
  `GeoRefDetDate` datetime DEFAULT NULL,
  `GeoRefDetRef` varchar(100) DEFAULT NULL,
  `GeoRefRemarks` text DEFAULT NULL,
  `GeoRefVerificationStatus` varchar(50) DEFAULT NULL,
  `MaxUncertaintyEst` decimal(20,10) DEFAULT NULL,
  `MaxUncertaintyEstUnit` varchar(8) DEFAULT NULL,
  `NamedPlaceExtent` decimal(20,10) DEFAULT NULL,
  `NoGeoRefBecause` varchar(100) DEFAULT NULL,
  `OriginalCoordSystem` varchar(32) DEFAULT NULL,
  `Protocol` varchar(64) DEFAULT NULL,
  `Source` varchar(64) DEFAULT NULL,
  `Text1` text DEFAULT NULL,
  `Text2` text DEFAULT NULL,
  `Text3` text DEFAULT NULL,
  `UncertaintyPolygon` text DEFAULT NULL,
  `Validation` varchar(64) DEFAULT NULL,
  `CompiledByID` int(11) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `AgentID` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `LocalityID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `geography`
--
-- Création :  lun. 31 déc. 2018 à 09:36
--

CREATE TABLE `geography` (
  `GeographyID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `Abbrev` varchar(16) DEFAULT NULL,
  `CentroidLat` decimal(19,2) DEFAULT NULL,
  `CentroidLon` decimal(19,2) DEFAULT NULL,
  `CommonName` varchar(128) DEFAULT NULL,
  `FullName` varchar(255) DEFAULT NULL,
  `GeographyCode` varchar(24) DEFAULT NULL,
  `GML` text DEFAULT NULL,
  `GUID` varchar(128) DEFAULT NULL,
  `HighestChildNodeNumber` int(11) DEFAULT NULL,
  `IsAccepted` bit(1) NOT NULL,
  `IsCurrent` bit(1) DEFAULT NULL,
  `Name` varchar(64) NOT NULL,
  `NodeNumber` int(11) DEFAULT NULL,
  `Number1` int(11) DEFAULT NULL,
  `Number2` int(11) DEFAULT NULL,
  `RankID` int(11) NOT NULL,
  `Remarks` text DEFAULT NULL,
  `Text1` varchar(32) DEFAULT NULL,
  `Text2` varchar(32) DEFAULT NULL,
  `TimestampVersion` datetime DEFAULT NULL,
  `AcceptedID` int(11) DEFAULT NULL,
  `GeographyTreeDefID` int(11) NOT NULL,
  `GeographyTreeDefItemID` int(11) NOT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `ParentID` int(11) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `geographytreedef`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `geographytreedef` (
  `GeographyTreeDefID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `FullNameDirection` int(11) DEFAULT NULL,
  `Name` varchar(64) NOT NULL,
  `Remarks` text DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `geographytreedefitem`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `geographytreedefitem` (
  `GeographyTreeDefItemID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `FullNameSeparator` varchar(32) DEFAULT NULL,
  `IsEnforced` bit(1) DEFAULT NULL,
  `IsInFullName` bit(1) DEFAULT NULL,
  `Name` varchar(64) NOT NULL,
  `RankID` int(11) NOT NULL,
  `Remarks` text DEFAULT NULL,
  `TextAfter` varchar(64) DEFAULT NULL,
  `TextBefore` varchar(64) DEFAULT NULL,
  `Title` varchar(64) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `GeographyTreeDefID` int(11) NOT NULL,
  `ParentItemID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `geologictimeperiod`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `geologictimeperiod` (
  `GeologicTimePeriodID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `EndPeriod` float(20,10) DEFAULT NULL,
  `EndUncertainty` float(20,10) DEFAULT NULL,
  `FullName` varchar(255) DEFAULT NULL,
  `GUID` varchar(128) DEFAULT NULL,
  `HighestChildNodeNumber` int(11) DEFAULT NULL,
  `IsAccepted` bit(1) NOT NULL,
  `IsBioStrat` bit(1) DEFAULT NULL,
  `Name` varchar(64) NOT NULL,
  `NodeNumber` int(11) DEFAULT NULL,
  `RankID` int(11) NOT NULL,
  `Remarks` text DEFAULT NULL,
  `Standard` varchar(64) DEFAULT NULL,
  `StartPeriod` float(20,10) DEFAULT NULL,
  `StartUncertainty` float(20,10) DEFAULT NULL,
  `Text1` varchar(128) DEFAULT NULL,
  `Text2` varchar(128) DEFAULT NULL,
  `GeologicTimePeriodTreeDefItemID` int(11) NOT NULL,
  `ParentID` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `GeologicTimePeriodTreeDefID` int(11) NOT NULL,
  `AcceptedID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `geologictimeperiodtreedef`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `geologictimeperiodtreedef` (
  `GeologicTimePeriodTreeDefID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `FullNameDirection` int(11) DEFAULT NULL,
  `Name` varchar(64) NOT NULL,
  `Remarks` text DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `geologictimeperiodtreedefitem`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `geologictimeperiodtreedefitem` (
  `GeologicTimePeriodTreeDefItemID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `FullNameSeparator` varchar(32) DEFAULT NULL,
  `IsEnforced` bit(1) DEFAULT NULL,
  `IsInFullName` bit(1) DEFAULT NULL,
  `Name` varchar(64) NOT NULL,
  `RankID` int(11) NOT NULL,
  `Remarks` text DEFAULT NULL,
  `TextAfter` varchar(64) DEFAULT NULL,
  `TextBefore` varchar(64) DEFAULT NULL,
  `Title` varchar(64) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `GeologicTimePeriodTreeDefID` int(11) NOT NULL,
  `ParentItemID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `gift`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `gift` (
  `GiftID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `Contents` text DEFAULT NULL,
  `DateReceived` date DEFAULT NULL,
  `GiftDate` date DEFAULT NULL,
  `GiftNumber` varchar(50) NOT NULL,
  `Integer1` int(11) DEFAULT NULL,
  `Integer2` int(11) DEFAULT NULL,
  `Integer3` int(11) DEFAULT NULL,
  `IsFinancialResponsibility` bit(1) DEFAULT NULL,
  `Number1` float(20,10) DEFAULT NULL,
  `Number2` float(20,10) DEFAULT NULL,
  `PurposeOfGift` varchar(64) DEFAULT NULL,
  `ReceivedComments` varchar(255) DEFAULT NULL,
  `Remarks` text DEFAULT NULL,
  `SpecialConditions` text DEFAULT NULL,
  `SrcGeography` varchar(500) DEFAULT NULL,
  `SrcTaxonomy` varchar(500) DEFAULT NULL,
  `Text1` text DEFAULT NULL,
  `Text2` text DEFAULT NULL,
  `YesNo1` bit(1) DEFAULT NULL,
  `YesNo2` bit(1) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `DisciplineID` int(11) NOT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `DivisionID` int(11) DEFAULT NULL,
  `AddressOfRecordID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `giftagent`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `giftagent` (
  `GiftAgentID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `Remarks` text DEFAULT NULL,
  `Role` varchar(50) NOT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `GiftID` int(11) NOT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `DisciplineID` int(11) NOT NULL,
  `AgentID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `giftattachment`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `giftattachment` (
  `GiftAttachmentID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `Ordinal` int(11) NOT NULL,
  `Remarks` text DEFAULT NULL,
  `AttachmentID` int(11) NOT NULL,
  `GiftID` int(11) NOT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `giftpreparation`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `giftpreparation` (
  `GiftPreparationID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `DescriptionOfMaterial` varchar(255) DEFAULT NULL,
  `InComments` text DEFAULT NULL,
  `OutComments` text DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `ReceivedComments` text DEFAULT NULL,
  `PreparationID` int(11) DEFAULT NULL,
  `GiftID` int(11) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `DisciplineID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `groupperson`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `groupperson` (
  `GroupPersonID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `OrderNumber` smallint(6) NOT NULL,
  `Remarks` text DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `MemberID` int(11) NOT NULL,
  `GroupID` int(11) NOT NULL,
  `DivisionID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `hibernate_unique_key`
--
-- Création :  lun. 31 déc. 2018 à 09:37
-- Dernière modification :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `hibernate_unique_key` (
  `next_hi` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `hibernate_unique_key`
--

INSERT INTO `hibernate_unique_key` (`next_hi`) VALUES
(0);

-- --------------------------------------------------------

--
-- Structure de la table `inforequest`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `inforequest` (
  `InfoRequestID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `CollectionMemberID` int(11) NOT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Firstname` varchar(50) DEFAULT NULL,
  `InfoReqNumber` varchar(32) DEFAULT NULL,
  `Institution` varchar(127) DEFAULT NULL,
  `Lastname` varchar(50) DEFAULT NULL,
  `Remarks` text DEFAULT NULL,
  `ReplyDate` date DEFAULT NULL,
  `RequestDate` date DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `AgentID` int(11) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `institution`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `institution` (
  `UserGroupScopeId` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `AltName` varchar(128) DEFAULT NULL,
  `Code` varchar(64) DEFAULT NULL,
  `Copyright` text DEFAULT NULL,
  `CurrentManagedRelVersion` varchar(8) DEFAULT NULL,
  `CurrentManagedSchemaVersion` varchar(8) DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `Disclaimer` text DEFAULT NULL,
  `GUID` varchar(128) DEFAULT NULL,
  `HasBeenAsked` bit(1) DEFAULT NULL,
  `IconURI` varchar(255) DEFAULT NULL,
  `institutionId` int(11) DEFAULT NULL,
  `Ipr` text DEFAULT NULL,
  `IsAccessionsGlobal` bit(1) NOT NULL,
  `IsAnonymous` bit(1) DEFAULT NULL,
  `IsReleaseManagedGlobally` bit(1) DEFAULT NULL,
  `IsSecurityOn` bit(1) NOT NULL,
  `IsServerBased` bit(1) NOT NULL,
  `IsSharingLocalities` bit(1) NOT NULL,
  `IsSingleGeographyTree` bit(1) NOT NULL,
  `License` text DEFAULT NULL,
  `LsidAuthority` varchar(64) DEFAULT NULL,
  `MinimumPwdLength` tinyint(4) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `RegNumber` varchar(24) DEFAULT NULL,
  `Remarks` text DEFAULT NULL,
  `TermsOfUse` text DEFAULT NULL,
  `Uri` varchar(255) DEFAULT NULL,
  `AddressID` int(11) DEFAULT NULL,
  `StorageTreeDefID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `institutionnetwork`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `institutionnetwork` (
  `InstitutionNetworkID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `AltName` varchar(128) DEFAULT NULL,
  `Code` varchar(64) DEFAULT NULL,
  `Copyright` text DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `Disclaimer` text DEFAULT NULL,
  `IconURI` varchar(255) DEFAULT NULL,
  `Ipr` text DEFAULT NULL,
  `License` text DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Remarks` text DEFAULT NULL,
  `TermsOfUse` text DEFAULT NULL,
  `Uri` varchar(255) DEFAULT NULL,
  `AddressID` int(11) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `journal`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `journal` (
  `JournalID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `GUID` varchar(128) DEFAULT NULL,
  `ISSN` varchar(16) DEFAULT NULL,
  `JournalAbbreviation` varchar(50) DEFAULT NULL,
  `JournalName` varchar(255) DEFAULT NULL,
  `Remarks` text DEFAULT NULL,
  `Text1` varchar(32) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `InstitutionID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `latlonpolygon`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `latlonpolygon` (
  `LatLonPolygonID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `IsPolyline` bit(1) NOT NULL,
  `Name` varchar(64) NOT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `LocalityID` int(11) DEFAULT NULL,
  `SpVisualQueryID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `latlonpolygonpnt`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `latlonpolygonpnt` (
  `LatLonPolygonPntID` int(11) NOT NULL,
  `Elevation` int(11) DEFAULT NULL,
  `Latitude` decimal(12,10) NOT NULL,
  `Longitude` decimal(12,10) NOT NULL,
  `Ordinal` int(11) NOT NULL,
  `LatLonPolygonID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `lithostrat`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `lithostrat` (
  `LithoStratID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `FullName` varchar(255) DEFAULT NULL,
  `GUID` varchar(128) DEFAULT NULL,
  `HighestChildNodeNumber` int(11) DEFAULT NULL,
  `IsAccepted` bit(1) NOT NULL,
  `Name` varchar(64) NOT NULL,
  `NodeNumber` int(11) DEFAULT NULL,
  `Number1` double DEFAULT NULL,
  `Number2` double DEFAULT NULL,
  `RankID` int(11) NOT NULL,
  `Remarks` text DEFAULT NULL,
  `Text1` text DEFAULT NULL,
  `Text2` text DEFAULT NULL,
  `YesNo1` bit(1) DEFAULT NULL,
  `YesNo2` bit(1) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `AcceptedID` int(11) DEFAULT NULL,
  `LithoStratTreeDefItemID` int(11) NOT NULL,
  `ParentID` int(11) DEFAULT NULL,
  `LithoStratTreeDefID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `lithostrattreedef`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `lithostrattreedef` (
  `LithoStratTreeDefID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `FullNameDirection` int(11) DEFAULT NULL,
  `Name` varchar(64) NOT NULL,
  `Remarks` text DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `lithostrattreedefitem`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `lithostrattreedefitem` (
  `LithoStratTreeDefItemID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `FullNameSeparator` varchar(32) DEFAULT NULL,
  `IsEnforced` bit(1) DEFAULT NULL,
  `IsInFullName` bit(1) DEFAULT NULL,
  `Name` varchar(64) NOT NULL,
  `RankID` int(11) NOT NULL,
  `Remarks` text DEFAULT NULL,
  `TextAfter` varchar(64) DEFAULT NULL,
  `TextBefore` varchar(64) DEFAULT NULL,
  `Title` varchar(64) DEFAULT NULL,
  `LithoStratTreeDefID` int(11) NOT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `ParentItemID` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `loan`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `loan` (
  `LoanID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `Contents` text DEFAULT NULL,
  `CurrentDueDate` date DEFAULT NULL,
  `DateClosed` date DEFAULT NULL,
  `DateReceived` date DEFAULT NULL,
  `Integer1` int(11) DEFAULT NULL,
  `Integer2` int(11) DEFAULT NULL,
  `Integer3` int(11) DEFAULT NULL,
  `IsClosed` bit(1) DEFAULT NULL,
  `IsFinancialResponsibility` bit(1) DEFAULT NULL,
  `LoanDate` date DEFAULT NULL,
  `LoanNumber` varchar(50) NOT NULL,
  `Number1` float(20,10) DEFAULT NULL,
  `Number2` float(20,10) DEFAULT NULL,
  `OriginalDueDate` date DEFAULT NULL,
  `OverdueNotiSetDate` date DEFAULT NULL,
  `PurposeOfLoan` varchar(64) DEFAULT NULL,
  `ReceivedComments` varchar(255) DEFAULT NULL,
  `Remarks` text DEFAULT NULL,
  `SpecialConditions` text DEFAULT NULL,
  `SrcGeography` varchar(500) DEFAULT NULL,
  `SrcTaxonomy` varchar(500) DEFAULT NULL,
  `Text1` text DEFAULT NULL,
  `Text2` text DEFAULT NULL,
  `YesNo1` bit(1) DEFAULT NULL,
  `YesNo2` bit(1) DEFAULT NULL,
  `DivisionID` int(11) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `DisciplineID` int(11) NOT NULL,
  `AddressOfRecordID` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `loanagent`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `loanagent` (
  `LoanAgentID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `Remarks` text DEFAULT NULL,
  `Role` varchar(50) NOT NULL,
  `DisciplineID` int(11) NOT NULL,
  `AgentID` int(11) NOT NULL,
  `LoanID` int(11) NOT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `loanattachment`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `loanattachment` (
  `LoanAttachmentID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `Ordinal` int(11) NOT NULL,
  `Remarks` text DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `AttachmentID` int(11) NOT NULL,
  `LoanID` int(11) NOT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `loanpreparation`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `loanpreparation` (
  `LoanPreparationID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `DescriptionOfMaterial` varchar(255) DEFAULT NULL,
  `InComments` text DEFAULT NULL,
  `IsResolved` bit(1) NOT NULL,
  `OutComments` text DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `QuantityResolved` int(11) DEFAULT NULL,
  `QuantityReturned` int(11) DEFAULT NULL,
  `ReceivedComments` text DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `LoanID` int(11) NOT NULL,
  `DisciplineID` int(11) NOT NULL,
  `PreparationID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `loanreturnpreparation`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `loanreturnpreparation` (
  `LoanReturnPreparationID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `QuantityResolved` int(11) DEFAULT NULL,
  `QuantityReturned` int(11) DEFAULT NULL,
  `Remarks` text DEFAULT NULL,
  `ReturnedDate` date DEFAULT NULL,
  `LoanPreparationID` int(11) NOT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `ReceivedByID` int(11) DEFAULT NULL,
  `DeaccessionPreparationID` int(11) DEFAULT NULL,
  `DisciplineID` int(11) NOT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `locality`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `locality` (
  `LocalityID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `Datum` varchar(50) DEFAULT NULL,
  `ElevationAccuracy` double DEFAULT NULL,
  `ElevationMethod` varchar(50) DEFAULT NULL,
  `GML` text DEFAULT NULL,
  `GUID` varchar(128) DEFAULT NULL,
  `Lat1Text` varchar(50) DEFAULT NULL,
  `Lat2Text` varchar(50) DEFAULT NULL,
  `LatLongAccuracy` double DEFAULT NULL,
  `LatLongMethod` varchar(50) DEFAULT NULL,
  `LatLongType` varchar(50) DEFAULT NULL,
  `Latitude1` decimal(12,10) DEFAULT NULL,
  `Latitude2` decimal(12,10) DEFAULT NULL,
  `LocalityName` varchar(255) NOT NULL,
  `Long1Text` varchar(50) DEFAULT NULL,
  `Long2Text` varchar(50) DEFAULT NULL,
  `Longitude1` decimal(13,10) DEFAULT NULL,
  `Longitude2` decimal(13,10) DEFAULT NULL,
  `MaxElevation` double DEFAULT NULL,
  `MinElevation` double DEFAULT NULL,
  `NamedPlace` varchar(255) DEFAULT NULL,
  `OriginalElevationUnit` varchar(50) DEFAULT NULL,
  `OriginalLatLongUnit` int(11) DEFAULT NULL,
  `RelationToNamedPlace` varchar(120) DEFAULT NULL,
  `Remarks` text DEFAULT NULL,
  `SGRStatus` tinyint(4) DEFAULT NULL,
  `ShortName` varchar(32) DEFAULT NULL,
  `SrcLatLongUnit` tinyint(4) NOT NULL,
  `Text1` text DEFAULT NULL,
  `Text2` text DEFAULT NULL,
  `Text3` text DEFAULT NULL,
  `Text4` text DEFAULT NULL,
  `Text5` text DEFAULT NULL,
  `VerbatimElevation` varchar(50) DEFAULT NULL,
  `VerbatimLatitude` varchar(50) DEFAULT NULL,
  `VerbatimLongitude` varchar(50) DEFAULT NULL,
  `Visibility` tinyint(4) DEFAULT NULL,
  `YesNo1` bit(1) DEFAULT NULL,
  `YesNo2` bit(1) DEFAULT NULL,
  `YesNo3` bit(1) DEFAULT NULL,
  `YesNo4` bit(1) DEFAULT NULL,
  `YesNo5` bit(1) DEFAULT NULL,
  `GeographyID` int(11) DEFAULT NULL,
  `DisciplineID` int(11) NOT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `PaleoContextID` int(11) DEFAULT NULL,
  `VisibilitySetByID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `localityattachment`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `localityattachment` (
  `LocalityAttachmentID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `Ordinal` int(11) NOT NULL,
  `Remarks` text DEFAULT NULL,
  `LocalityID` int(11) NOT NULL,
  `AttachmentID` int(11) NOT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `localitycitation`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `localitycitation` (
  `LocalityCitationID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `Remarks` text DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `ReferenceWorkID` int(11) NOT NULL,
  `LocalityID` int(11) NOT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `DisciplineID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `localitydetail`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `localitydetail` (
  `LocalityDetailID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `BaseMeridian` varchar(50) DEFAULT NULL,
  `Drainage` varchar(64) DEFAULT NULL,
  `EndDepth` double DEFAULT NULL,
  `EndDepthUnit` varchar(23) DEFAULT NULL,
  `EndDepthVerbatim` varchar(32) DEFAULT NULL,
  `GML` text DEFAULT NULL,
  `HucCode` varchar(16) DEFAULT NULL,
  `Island` varchar(64) DEFAULT NULL,
  `IslandGroup` varchar(64) DEFAULT NULL,
  `MgrsZone` varchar(4) DEFAULT NULL,
  `NationalParkName` varchar(64) DEFAULT NULL,
  `Number1` double DEFAULT NULL,
  `Number2` double DEFAULT NULL,
  `Number3` float(20,10) DEFAULT NULL,
  `Number4` float(20,10) DEFAULT NULL,
  `Number5` float(20,10) DEFAULT NULL,
  `PaleoLat` varchar(32) DEFAULT NULL,
  `PaleoLng` varchar(32) DEFAULT NULL,
  `RangeDesc` varchar(50) DEFAULT NULL,
  `RangeDirection` varchar(50) DEFAULT NULL,
  `Section` varchar(50) DEFAULT NULL,
  `SectionPart` varchar(50) DEFAULT NULL,
  `StartDepth` double DEFAULT NULL,
  `StartDepthUnit` varchar(23) DEFAULT NULL,
  `StartDepthVerbatim` varchar(32) DEFAULT NULL,
  `Text1` text DEFAULT NULL,
  `Text2` text DEFAULT NULL,
  `Text3` text DEFAULT NULL,
  `Text4` text DEFAULT NULL,
  `Text5` text DEFAULT NULL,
  `Township` varchar(50) DEFAULT NULL,
  `TownshipDirection` varchar(50) DEFAULT NULL,
  `UtmDatum` varchar(32) DEFAULT NULL,
  `UtmEasting` decimal(19,2) DEFAULT NULL,
  `UtmFalseEasting` int(11) DEFAULT NULL,
  `UtmFalseNorthing` int(11) DEFAULT NULL,
  `UtmNorthing` decimal(19,2) DEFAULT NULL,
  `UtmOrigLatitude` decimal(19,2) DEFAULT NULL,
  `UtmOrigLongitude` decimal(19,2) DEFAULT NULL,
  `UtmScale` decimal(20,10) DEFAULT NULL,
  `UtmZone` smallint(6) DEFAULT NULL,
  `WaterBody` varchar(64) DEFAULT NULL,
  `YesNo1` bit(1) DEFAULT NULL,
  `YesNo2` bit(1) DEFAULT NULL,
  `YesNo3` bit(1) DEFAULT NULL,
  `YesNo4` bit(1) DEFAULT NULL,
  `YesNo5` bit(1) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `LocalityID` int(11) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `localitynamealias`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `localitynamealias` (
  `LocalityNameAliasID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `Name` varchar(255) NOT NULL,
  `Source` varchar(64) NOT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `LocalityID` int(11) NOT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `DisciplineID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `materialsample`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `materialsample` (
  `MaterialSampleID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `CollectionMemberID` int(11) NOT NULL,
  `GGBNAbsorbanceRatio260_230` float(20,10) DEFAULT NULL,
  `GGBNAbsorbanceRatio260_280` float(20,10) DEFAULT NULL,
  `GGBNRAbsorbanceRatioMethod` varchar(64) DEFAULT NULL,
  `GGBNConcentration` float(20,10) DEFAULT NULL,
  `GGBNConcentrationUnit` varchar(64) DEFAULT NULL,
  `GGBNMaterialSampleType` varchar(64) DEFAULT NULL,
  `GGBNMedium` varchar(64) DEFAULT NULL,
  `GGBNPurificationMethod` varchar(64) DEFAULT NULL,
  `GGBNQuality` varchar(64) DEFAULT NULL,
  `GGBNQualityCheckDate` date DEFAULT NULL,
  `GGBNQualityRemarks` text DEFAULT NULL,
  `GGBNSampleDesignation` varchar(128) DEFAULT NULL,
  `GGBNSampleSize` float(20,10) DEFAULT NULL,
  `GGBNVolume` float(20,10) DEFAULT NULL,
  `GGBNVolumeUnit` varchar(64) DEFAULT NULL,
  `GGBNWeight` float(20,10) DEFAULT NULL,
  `GGBNWeightMethod` varchar(64) DEFAULT NULL,
  `GGBNWeightUnit` varchar(64) DEFAULT NULL,
  `ExtractionDate` date DEFAULT NULL,
  `GUID` varchar(128) DEFAULT NULL,
  `Integer1` int(11) DEFAULT NULL,
  `Integer2` int(11) DEFAULT NULL,
  `Number1` float(20,10) DEFAULT NULL,
  `Number2` float(20,10) DEFAULT NULL,
  `Remarks` text DEFAULT NULL,
  `ReservedInteger3` int(11) DEFAULT NULL,
  `ReservedInteger4` int(11) DEFAULT NULL,
  `ReservedNumber3` float(20,10) DEFAULT NULL,
  `ReservedNumber4` float(20,10) DEFAULT NULL,
  `ReservedText3` text DEFAULT NULL,
  `ReservedText4` text DEFAULT NULL,
  `SRABioProjectID` varchar(64) DEFAULT NULL,
  `SRABioSampleID` varchar(64) DEFAULT NULL,
  `SRAProjectID` varchar(64) DEFAULT NULL,
  `SRASampleID` varchar(64) DEFAULT NULL,
  `Text1` text DEFAULT NULL,
  `Text2` text DEFAULT NULL,
  `YesNo1` bit(1) DEFAULT NULL,
  `YesNo2` bit(1) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `PreparationID` int(11) NOT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `morphbankview`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `morphbankview` (
  `MorphBankViewID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `DevelopmentState` varchar(128) DEFAULT NULL,
  `Form` varchar(128) DEFAULT NULL,
  `ImagingPreparationTechnique` varchar(128) DEFAULT NULL,
  `ImagingTechnique` varchar(128) DEFAULT NULL,
  `MorphBankExternalViewID` int(11) DEFAULT NULL,
  `Sex` varchar(32) DEFAULT NULL,
  `SpecimenPart` varchar(128) DEFAULT NULL,
  `ViewAngle` varchar(128) DEFAULT NULL,
  `ViewName` varchar(128) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `otheridentifier`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `otheridentifier` (
  `OtherIdentifierID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `CollectionMemberID` int(11) NOT NULL,
  `Identifier` varchar(64) NOT NULL,
  `Institution` varchar(64) DEFAULT NULL,
  `Remarks` text DEFAULT NULL,
  `CollectionObjectID` int(11) NOT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `paleocontext`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `paleocontext` (
  `PaleoContextID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `Number1` double DEFAULT NULL,
  `Number2` double DEFAULT NULL,
  `Number3` double DEFAULT NULL,
  `Number4` double DEFAULT NULL,
  `Number5` double DEFAULT NULL,
  `PaleoContextName` varchar(80) DEFAULT NULL,
  `Remarks` text DEFAULT NULL,
  `Text1` varchar(64) DEFAULT NULL,
  `Text2` varchar(64) DEFAULT NULL,
  `Text3` varchar(500) DEFAULT NULL,
  `Text4` varchar(500) DEFAULT NULL,
  `Text5` varchar(500) DEFAULT NULL,
  `YesNo1` bit(1) DEFAULT NULL,
  `YesNo2` bit(1) DEFAULT NULL,
  `YesNo3` bit(1) DEFAULT NULL,
  `YesNo4` bit(1) DEFAULT NULL,
  `YesNo5` bit(1) DEFAULT NULL,
  `LithoStratID` int(11) DEFAULT NULL,
  `ChronosStratEndID` int(11) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `BioStratID` int(11) DEFAULT NULL,
  `DisciplineID` int(11) NOT NULL,
  `ChronosStratID` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `permit`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `permit` (
  `PermitID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `Copyright` varchar(256) DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  `IsAvailable` bit(1) DEFAULT NULL,
  `IsRequired` bit(1) DEFAULT NULL,
  `IssuedDate` date DEFAULT NULL,
  `Number1` float(20,10) DEFAULT NULL,
  `Number2` float(20,10) DEFAULT NULL,
  `PermitNumber` varchar(50) NOT NULL,
  `PermitText` text DEFAULT NULL,
  `Remarks` text DEFAULT NULL,
  `RenewalDate` date DEFAULT NULL,
  `ReservedInteger1` int(11) DEFAULT NULL,
  `ReservedInteger2` int(11) DEFAULT NULL,
  `ReservedText3` varchar(128) DEFAULT NULL,
  `ReservedText4` varchar(128) DEFAULT NULL,
  `StartDate` date DEFAULT NULL,
  `Status` varchar(64) DEFAULT NULL,
  `StatusQualifier` varchar(128) DEFAULT NULL,
  `Text1` text DEFAULT NULL,
  `Text2` text DEFAULT NULL,
  `Type` varchar(50) DEFAULT NULL,
  `YesNo1` bit(1) DEFAULT NULL,
  `YesNo2` bit(1) DEFAULT NULL,
  `InstitutionID` int(11) NOT NULL,
  `IssuedByID` int(11) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `IssuedToID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `permitattachment`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `permitattachment` (
  `PermitAttachmentID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `Ordinal` int(11) NOT NULL,
  `Remarks` text DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `AttachmentID` int(11) NOT NULL,
  `PermitID` int(11) NOT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `picklist`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `picklist` (
  `PickListID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `FieldName` varchar(64) DEFAULT NULL,
  `FilterFieldName` varchar(32) DEFAULT NULL,
  `FilterValue` varchar(32) DEFAULT NULL,
  `Formatter` varchar(64) DEFAULT NULL,
  `IsSystem` bit(1) NOT NULL,
  `Name` varchar(64) NOT NULL,
  `ReadOnly` bit(1) NOT NULL,
  `SizeLimit` int(11) DEFAULT NULL,
  `SortType` tinyint(4) DEFAULT NULL,
  `TableName` varchar(64) DEFAULT NULL,
  `Type` tinyint(4) NOT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `CollectionID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `picklistitem`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `picklistitem` (
  `PickListItemID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `Ordinal` int(11) DEFAULT NULL,
  `Title` varchar(128) NOT NULL,
  `Value` varchar(128) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `PickListID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `preparation`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `preparation` (
  `PreparationID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `CollectionMemberID` int(11) NOT NULL,
  `CountAmt` int(11) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `GUID` varchar(128) DEFAULT NULL,
  `Integer1` int(11) DEFAULT NULL,
  `Integer2` int(11) DEFAULT NULL,
  `Number1` float(20,10) DEFAULT NULL,
  `Number2` float(20,10) DEFAULT NULL,
  `PreparedDate` date DEFAULT NULL,
  `PreparedDatePrecision` tinyint(4) DEFAULT NULL,
  `Remarks` text DEFAULT NULL,
  `ReservedInteger3` int(11) DEFAULT NULL,
  `ReservedInteger4` int(11) DEFAULT NULL,
  `SampleNumber` varchar(32) DEFAULT NULL,
  `Status` varchar(32) DEFAULT NULL,
  `StorageLocation` varchar(50) DEFAULT NULL,
  `Text1` text DEFAULT NULL,
  `Text2` text DEFAULT NULL,
  `Text3` text DEFAULT NULL,
  `Text4` text DEFAULT NULL,
  `Text5` text DEFAULT NULL,
  `YesNo1` bit(1) DEFAULT NULL,
  `YesNo2` bit(1) DEFAULT NULL,
  `YesNo3` bit(1) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `PreparationAttributeID` int(11) DEFAULT NULL,
  `PreparedByID` int(11) DEFAULT NULL,
  `StorageID` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `CollectionObjectID` int(11) NOT NULL,
  `PrepTypeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `preparationattachment`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `preparationattachment` (
  `PreparationAttachmentID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `CollectionMemberID` int(11) NOT NULL,
  `Ordinal` int(11) NOT NULL,
  `Remarks` text DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `PreparationID` int(11) NOT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `AttachmentID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `preparationattr`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `preparationattr` (
  `AttrID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `CollectionMemberID` int(11) NOT NULL,
  `DoubleValue` double DEFAULT NULL,
  `StrValue` varchar(255) DEFAULT NULL,
  `AttributeDefID` int(11) NOT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `PreparationId` int(11) NOT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `preparationattribute`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `preparationattribute` (
  `PreparationAttributeID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `CollectionMemberID` int(11) NOT NULL,
  `AttrDate` datetime DEFAULT NULL,
  `Number1` float(20,10) DEFAULT NULL,
  `Number2` float(20,10) DEFAULT NULL,
  `Number3` float(20,10) DEFAULT NULL,
  `Number4` int(11) DEFAULT NULL,
  `Number5` int(11) DEFAULT NULL,
  `Number6` int(11) DEFAULT NULL,
  `Number7` int(11) DEFAULT NULL,
  `Number8` int(11) DEFAULT NULL,
  `Number9` smallint(6) DEFAULT NULL,
  `Remarks` text DEFAULT NULL,
  `Text1` text DEFAULT NULL,
  `Text10` text DEFAULT NULL,
  `Text11` varchar(50) DEFAULT NULL,
  `Text12` varchar(50) DEFAULT NULL,
  `Text13` varchar(50) DEFAULT NULL,
  `Text14` varchar(50) DEFAULT NULL,
  `Text15` varchar(50) DEFAULT NULL,
  `Text16` varchar(50) DEFAULT NULL,
  `Text17` varchar(50) DEFAULT NULL,
  `Text18` varchar(50) DEFAULT NULL,
  `Text19` varchar(50) DEFAULT NULL,
  `Text2` text DEFAULT NULL,
  `Text20` varchar(50) DEFAULT NULL,
  `Text21` varchar(50) DEFAULT NULL,
  `Text22` varchar(50) DEFAULT NULL,
  `Text23` varchar(50) DEFAULT NULL,
  `Text24` varchar(50) DEFAULT NULL,
  `Text25` varchar(50) DEFAULT NULL,
  `Text26` varchar(50) DEFAULT NULL,
  `Text3` varchar(50) DEFAULT NULL,
  `Text4` varchar(50) DEFAULT NULL,
  `Text5` varchar(50) DEFAULT NULL,
  `Text6` varchar(50) DEFAULT NULL,
  `Text7` varchar(50) DEFAULT NULL,
  `Text8` varchar(50) DEFAULT NULL,
  `Text9` varchar(50) DEFAULT NULL,
  `YesNo1` bit(1) DEFAULT NULL,
  `YesNo2` bit(1) DEFAULT NULL,
  `YesNo3` bit(1) DEFAULT NULL,
  `YesNo4` bit(1) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `preptype`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `preptype` (
  `PrepTypeID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `IsLoanable` bit(1) NOT NULL,
  `Name` varchar(64) NOT NULL,
  `CollectionID` int(11) NOT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `project`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `project` (
  `ProjectID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `CollectionMemberID` int(11) NOT NULL,
  `EndDate` date DEFAULT NULL,
  `GrantAgency` varchar(64) DEFAULT NULL,
  `GrantNumber` varchar(64) DEFAULT NULL,
  `Number1` float(20,10) DEFAULT NULL,
  `Number2` float(20,10) DEFAULT NULL,
  `ProjectDescription` varchar(255) DEFAULT NULL,
  `ProjectName` varchar(128) NOT NULL,
  `ProjectNumber` varchar(64) DEFAULT NULL,
  `Remarks` text DEFAULT NULL,
  `StartDate` date DEFAULT NULL,
  `Text1` text DEFAULT NULL,
  `Text2` text DEFAULT NULL,
  `URL` varchar(1024) DEFAULT NULL,
  `YesNo1` bit(1) DEFAULT NULL,
  `YesNo2` bit(1) DEFAULT NULL,
  `ProjectAgentID` int(11) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `project_colobj`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `project_colobj` (
  `ProjectID` int(11) NOT NULL,
  `CollectionObjectID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `recordset`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `recordset` (
  `RecordSetID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `CollectionMemberID` int(11) NOT NULL,
  `AllPermissionLevel` int(11) DEFAULT NULL,
  `TableID` int(11) NOT NULL,
  `GroupPermissionLevel` int(11) DEFAULT NULL,
  `Name` varchar(64) NOT NULL,
  `OwnerPermissionLevel` int(11) DEFAULT NULL,
  `Remarks` text DEFAULT NULL,
  `Type` tinyint(4) NOT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `InfoRequestID` int(11) DEFAULT NULL,
  `SpecifyUserID` int(11) NOT NULL,
  `SpPrincipalID` int(11) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `recordsetitem`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `recordsetitem` (
  `RecordSetItemID` int(11) NOT NULL,
  `OrderNumber` int(11) DEFAULT NULL,
  `RecordId` int(11) NOT NULL,
  `RecordSetID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `referencework`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `referencework` (
  `ReferenceWorkID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `GUID` varchar(128) DEFAULT NULL,
  `IsPublished` bit(1) DEFAULT NULL,
  `ISBN` varchar(16) DEFAULT NULL,
  `LibraryNumber` varchar(50) DEFAULT NULL,
  `Number1` float(20,10) DEFAULT NULL,
  `Number2` float(20,10) DEFAULT NULL,
  `Pages` varchar(50) DEFAULT NULL,
  `PlaceOfPublication` varchar(50) DEFAULT NULL,
  `Publisher` varchar(250) DEFAULT NULL,
  `ReferenceWorkType` tinyint(4) NOT NULL,
  `Remarks` text DEFAULT NULL,
  `Text1` text DEFAULT NULL,
  `Text2` text DEFAULT NULL,
  `Title` varchar(255) NOT NULL,
  `URL` varchar(1024) DEFAULT NULL,
  `Volume` varchar(25) DEFAULT NULL,
  `WorkDate` varchar(25) DEFAULT NULL,
  `YesNo1` bit(1) DEFAULT NULL,
  `YesNo2` bit(1) DEFAULT NULL,
  `JournalID` int(11) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `ContainedRFParentID` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `InstitutionID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `referenceworkattachment`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `referenceworkattachment` (
  `ReferenceWorkAttachmentID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `Ordinal` int(11) NOT NULL,
  `Remarks` text DEFAULT NULL,
  `AttachmentID` int(11) NOT NULL,
  `ReferenceWorkID` int(11) NOT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `repositoryagreement`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `repositoryagreement` (
  `RepositoryAgreementID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `DateReceived` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  `Number1` float(20,10) DEFAULT NULL,
  `Number2` float(20,10) DEFAULT NULL,
  `Remarks` text DEFAULT NULL,
  `RepositoryAgreementNumber` varchar(60) NOT NULL,
  `StartDate` date DEFAULT NULL,
  `Status` varchar(32) DEFAULT NULL,
  `Text1` varchar(255) DEFAULT NULL,
  `Text2` varchar(255) DEFAULT NULL,
  `Text3` varchar(255) DEFAULT NULL,
  `YesNo1` bit(1) DEFAULT NULL,
  `YesNo2` bit(1) DEFAULT NULL,
  `AgentID` int(11) NOT NULL,
  `DivisionID` int(11) NOT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `AddressOfRecordID` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `repositoryagreementattachment`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `repositoryagreementattachment` (
  `RepositoryAgreementAttachmentID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `Ordinal` int(11) DEFAULT NULL,
  `Remarks` text DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `RepositoryAgreementID` int(11) NOT NULL,
  `AttachmentID` int(11) NOT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `sgrbatchmatchresultitem`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `sgrbatchmatchresultitem` (
  `id` bigint(20) NOT NULL,
  `matchedId` varchar(128) NOT NULL,
  `maxScore` float NOT NULL,
  `batchMatchResultSetId` bigint(20) NOT NULL,
  `qTime` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `sgrbatchmatchresultset`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `sgrbatchmatchresultset` (
  `id` bigint(20) NOT NULL,
  `insertTime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `name` varchar(128) NOT NULL,
  `recordSetID` bigint(20) DEFAULT NULL,
  `matchConfigurationId` bigint(20) NOT NULL,
  `query` text NOT NULL,
  `remarks` text NOT NULL,
  `dbTableId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `sgrmatchconfiguration`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `sgrmatchconfiguration` (
  `id` bigint(20) NOT NULL,
  `name` varchar(128) NOT NULL,
  `similarityFields` text NOT NULL,
  `serverUrl` text NOT NULL,
  `filterQuery` varchar(128) NOT NULL,
  `queryFields` text NOT NULL,
  `remarks` text NOT NULL,
  `boostInterestingTerms` tinyint(1) NOT NULL,
  `nRows` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `shipment`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `shipment` (
  `ShipmentID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `InsuredForAmount` varchar(50) DEFAULT NULL,
  `Number1` float(20,10) DEFAULT NULL,
  `Number2` float(20,10) DEFAULT NULL,
  `NumberOfPackages` smallint(6) DEFAULT NULL,
  `Remarks` text DEFAULT NULL,
  `ShipmentDate` date DEFAULT NULL,
  `ShipmentMethod` varchar(50) DEFAULT NULL,
  `ShipmentNumber` varchar(50) NOT NULL,
  `Text1` text DEFAULT NULL,
  `Text2` text DEFAULT NULL,
  `Weight` varchar(50) DEFAULT NULL,
  `YesNo1` bit(1) DEFAULT NULL,
  `YesNo2` bit(1) DEFAULT NULL,
  `GiftID` int(11) DEFAULT NULL,
  `ExchangeOutID` int(11) DEFAULT NULL,
  `ShippedByID` int(11) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `DisciplineID` int(11) NOT NULL,
  `BorrowID` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `ShipperID` int(11) DEFAULT NULL,
  `ShippedToID` int(11) DEFAULT NULL,
  `LoanID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `spappresource`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `spappresource` (
  `SpAppResourceID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `AllPermissionLevel` int(11) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `GroupPermissionLevel` int(11) DEFAULT NULL,
  `Level` smallint(6) NOT NULL,
  `MetaData` varchar(255) DEFAULT NULL,
  `MimeType` varchar(255) DEFAULT NULL,
  `Name` varchar(64) NOT NULL,
  `OwnerPermissionLevel` int(11) DEFAULT NULL,
  `SpAppResourceDirID` int(11) NOT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `SpecifyUserID` int(11) NOT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `SpPrincipalID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `spappresourcedata`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `spappresourcedata` (
  `SpAppResourceDataID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `data` mediumblob DEFAULT NULL,
  `SpAppResourceID` int(11) DEFAULT NULL,
  `SpViewSetObjID` int(11) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `spappresourcedir`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `spappresourcedir` (
  `SpAppResourceDirID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `DisciplineType` varchar(64) DEFAULT NULL,
  `IsPersonal` bit(1) NOT NULL,
  `UserType` varchar(64) DEFAULT NULL,
  `DisciplineID` int(11) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `CollectionID` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `SpecifyUserID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `spauditlog`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `spauditlog` (
  `SpAuditLogID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `Action` tinyint(4) NOT NULL,
  `ParentRecordId` int(11) DEFAULT NULL,
  `ParentTableNum` smallint(6) DEFAULT NULL,
  `RecordId` int(11) DEFAULT NULL,
  `RecordVersion` int(11) NOT NULL,
  `TableNum` smallint(6) NOT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `spauditlogfield`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `spauditlogfield` (
  `SpAuditLogFieldID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `FieldName` varchar(32) NOT NULL,
  `NewValue` varchar(64) NOT NULL,
  `OldValue` varchar(64) NOT NULL,
  `SpAuditLogID` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `specifyuser`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `specifyuser` (
  `SpecifyUserID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `AccumMinLoggedIn` bigint(20) DEFAULT NULL,
  `EMail` varchar(64) DEFAULT NULL,
  `IsLoggedIn` bit(1) NOT NULL,
  `IsLoggedInReport` bit(1) NOT NULL,
  `LoginCollectionName` varchar(64) DEFAULT NULL,
  `LoginDisciplineName` varchar(64) DEFAULT NULL,
  `LoginOutTime` datetime DEFAULT NULL,
  `Name` varchar(64) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `UserType` varchar(32) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `specifyuser_spprincipal`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `specifyuser_spprincipal` (
  `SpecifyUserID` int(11) NOT NULL,
  `SpPrincipalID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `spexportschema`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `spexportschema` (
  `SpExportSchemaID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `SchemaName` varchar(80) DEFAULT NULL,
  `SchemaVersion` varchar(80) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `DisciplineID` int(11) NOT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `spexportschemaitem`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `spexportschemaitem` (
  `SpExportSchemaItemID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `DataType` varchar(32) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `FieldName` varchar(64) DEFAULT NULL,
  `Formatter` varchar(32) DEFAULT NULL,
  `SpLocaleContainerItemID` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `SpExportSchemaID` int(11) NOT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `spexportschemaitemmapping`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `spexportschemaitemmapping` (
  `SpExportSchemaItemMappingID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `ExportedFieldName` varchar(64) DEFAULT NULL,
  `Remarks` varchar(255) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `SpExportSchemaMappingID` int(11) DEFAULT NULL,
  `ExportSchemaItemID` int(11) DEFAULT NULL,
  `SpQueryFieldID` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `spexportschemamapping`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `spexportschemamapping` (
  `SpExportSchemaMappingID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `CollectionMemberID` int(11) NOT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `MappingName` varchar(50) DEFAULT NULL,
  `TimeStampExported` datetime DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `spfieldvaluedefault`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `spfieldvaluedefault` (
  `SpFieldValueDefaultID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `CollectionMemberID` int(11) NOT NULL,
  `FieldName` varchar(32) DEFAULT NULL,
  `IdValue` int(11) DEFAULT NULL,
  `StrValue` varchar(64) DEFAULT NULL,
  `TableName` varchar(32) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `splocalecontainer`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `splocalecontainer` (
  `SpLocaleContainerID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `Format` varchar(64) DEFAULT NULL,
  `IsHidden` bit(1) NOT NULL,
  `IsSystem` bit(1) NOT NULL,
  `IsUIFormatter` bit(1) DEFAULT NULL,
  `Name` varchar(64) NOT NULL,
  `PickListName` varchar(64) DEFAULT NULL,
  `Type` varchar(32) DEFAULT NULL,
  `Aggregator` varchar(64) DEFAULT NULL,
  `DefaultUI` varchar(64) DEFAULT NULL,
  `SchemaType` tinyint(4) NOT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `DisciplineID` int(11) NOT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `splocalecontaineritem`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `splocalecontaineritem` (
  `SpLocaleContainerItemID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `Format` varchar(64) DEFAULT NULL,
  `IsHidden` bit(1) NOT NULL,
  `IsSystem` bit(1) NOT NULL,
  `IsUIFormatter` bit(1) DEFAULT NULL,
  `Name` varchar(64) NOT NULL,
  `PickListName` varchar(64) DEFAULT NULL,
  `Type` varchar(32) DEFAULT NULL,
  `IsRequired` bit(1) DEFAULT NULL,
  `WebLinkName` varchar(32) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `SpLocaleContainerID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `splocaleitemstr`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `splocaleitemstr` (
  `SpLocaleItemStrID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `Country` varchar(2) DEFAULT NULL,
  `Language` varchar(2) NOT NULL,
  `Text` varchar(255) NOT NULL,
  `Variant` varchar(2) DEFAULT NULL,
  `SpLocaleContainerNameID` int(11) DEFAULT NULL,
  `SpLocaleContainerItemNameID` int(11) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `SpLocaleContainerItemDescID` int(11) DEFAULT NULL,
  `SpLocaleContainerDescID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `sppermission`
--
-- Création :  lun. 31 déc. 2018 à 09:36
--

CREATE TABLE `sppermission` (
  `SpPermissionID` int(11) NOT NULL,
  `Actions` varchar(256) DEFAULT NULL,
  `Name` varchar(64) DEFAULT NULL,
  `PermissionClass` varchar(256) NOT NULL,
  `TargetId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `spprincipal`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `spprincipal` (
  `SpPrincipalID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `GroupSubClass` varchar(255) NOT NULL,
  `groupType` varchar(32) DEFAULT NULL,
  `Name` varchar(64) NOT NULL,
  `Priority` tinyint(4) NOT NULL,
  `Remarks` text DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `userGroupScopeID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `spprincipal_sppermission`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `spprincipal_sppermission` (
  `SpPermissionID` int(11) NOT NULL,
  `SpPrincipalID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `spquery`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `spquery` (
  `SpQueryID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `ContextName` varchar(64) NOT NULL,
  `ContextTableId` smallint(6) NOT NULL,
  `CountOnly` bit(1) DEFAULT NULL,
  `IsFavorite` bit(1) DEFAULT NULL,
  `Name` varchar(64) NOT NULL,
  `Ordinal` smallint(6) DEFAULT NULL,
  `Remarks` text DEFAULT NULL,
  `SearchSynonymy` bit(1) DEFAULT NULL,
  `SelectDistinct` bit(1) DEFAULT NULL,
  `Smushed` bit(1) DEFAULT NULL,
  `SqlStr` text DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `SpecifyUserID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `spqueryfield`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `spqueryfield` (
  `SpQueryFieldID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `AllowNulls` bit(1) DEFAULT NULL,
  `AlwaysFilter` bit(1) DEFAULT NULL,
  `ColumnAlias` varchar(64) DEFAULT NULL,
  `ContextTableIdent` int(11) DEFAULT NULL,
  `EndValue` varchar(255) DEFAULT NULL,
  `FieldName` varchar(32) NOT NULL,
  `FormatName` varchar(64) DEFAULT NULL,
  `IsDisplay` bit(1) NOT NULL,
  `IsNot` bit(1) NOT NULL,
  `IsPrompt` bit(1) DEFAULT NULL,
  `IsRelFld` bit(1) DEFAULT NULL,
  `OperEnd` tinyint(4) DEFAULT NULL,
  `OperStart` tinyint(4) NOT NULL,
  `Position` smallint(6) NOT NULL,
  `SortType` tinyint(4) NOT NULL,
  `StartValue` varchar(255) NOT NULL,
  `StringId` varchar(500) NOT NULL,
  `TableList` varchar(500) NOT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `SpQueryID` int(11) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `spreport`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `spreport` (
  `SpReportId` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `Name` varchar(64) NOT NULL,
  `Remarks` text DEFAULT NULL,
  `RepeatCount` int(11) DEFAULT NULL,
  `RepeatField` varchar(255) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `SpecifyUserID` int(11) NOT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `AppResourceID` int(11) NOT NULL,
  `WorkbenchTemplateID` int(11) DEFAULT NULL,
  `SpQueryID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `spsymbiotainstance`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `spsymbiotainstance` (
  `SpSymbiotaInstanceID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `CollectionMemberID` int(11) NOT NULL,
  `Description` varchar(256) DEFAULT NULL,
  `InstanceName` varchar(256) DEFAULT NULL,
  `LastCacheBuild` datetime DEFAULT NULL,
  `LastPull` datetime DEFAULT NULL,
  `LastPush` datetime DEFAULT NULL,
  `Remarks` text DEFAULT NULL,
  `SymbiotaKey` varchar(128) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `SchemaMappingID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `sptasksemaphore`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `sptasksemaphore` (
  `TaskSemaphoreID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `Context` varchar(32) DEFAULT NULL,
  `IsLocked` bit(1) DEFAULT NULL,
  `LockedTime` datetime DEFAULT NULL,
  `MachineName` varchar(64) DEFAULT NULL,
  `Scope` tinyint(4) DEFAULT NULL,
  `TaskName` varchar(32) DEFAULT NULL,
  `UsageCount` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `CollectionID` int(11) DEFAULT NULL,
  `OwnerID` int(11) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `DisciplineID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `spversion`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `spversion` (
  `SpVersionID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `AppName` varchar(32) DEFAULT NULL,
  `AppVersion` varchar(16) DEFAULT NULL,
  `DbClosedBy` varchar(32) DEFAULT NULL,
  `IsDBClosed` bit(1) DEFAULT NULL,
  `SchemaVersion` varchar(16) DEFAULT NULL,
  `WorkbenchSchemaVersion` varchar(16) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `spviewsetobj`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `spviewsetobj` (
  `SpViewSetObjID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `FileName` varchar(255) DEFAULT NULL,
  `Level` smallint(6) NOT NULL,
  `MetaData` varchar(255) DEFAULT NULL,
  `Name` varchar(64) NOT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `SpAppResourceDirID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `spvisualquery`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `spvisualquery` (
  `SpVisualQueryID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `Name` varchar(64) NOT NULL,
  `SpecifyUserID` int(11) NOT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `sp_schema_mapping`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `sp_schema_mapping` (
  `SpExportSchemaMappingID` int(11) NOT NULL,
  `SpExportSchemaID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `storage`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `storage` (
  `StorageID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `Abbrev` varchar(16) DEFAULT NULL,
  `FullName` varchar(255) DEFAULT NULL,
  `HighestChildNodeNumber` int(11) DEFAULT NULL,
  `IsAccepted` bit(1) NOT NULL,
  `Name` varchar(64) NOT NULL,
  `NodeNumber` int(11) DEFAULT NULL,
  `Number1` int(11) DEFAULT NULL,
  `Number2` int(11) DEFAULT NULL,
  `RankID` int(11) NOT NULL,
  `Remarks` text DEFAULT NULL,
  `Text1` varchar(32) DEFAULT NULL,
  `Text2` varchar(32) DEFAULT NULL,
  `TimestampVersion` datetime DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `AcceptedID` int(11) DEFAULT NULL,
  `StorageTreeDefID` int(11) NOT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `StorageTreeDefItemID` int(11) NOT NULL,
  `ParentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `storageattachment`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `storageattachment` (
  `StorageAttachmentID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `Ordinal` int(11) NOT NULL,
  `Remarks` text DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `StorageID` int(11) NOT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `AttachmentID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `storagetreedef`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `storagetreedef` (
  `StorageTreeDefID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `FullNameDirection` int(11) DEFAULT NULL,
  `Name` varchar(64) NOT NULL,
  `Remarks` text DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `storagetreedefitem`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `storagetreedefitem` (
  `StorageTreeDefItemID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `FullNameSeparator` varchar(32) DEFAULT NULL,
  `IsEnforced` bit(1) DEFAULT NULL,
  `IsInFullName` bit(1) DEFAULT NULL,
  `Name` varchar(64) NOT NULL,
  `RankID` int(11) NOT NULL,
  `Remarks` text DEFAULT NULL,
  `TextAfter` varchar(64) DEFAULT NULL,
  `TextBefore` varchar(64) DEFAULT NULL,
  `Title` varchar(64) DEFAULT NULL,
  `StorageTreeDefID` int(11) NOT NULL,
  `ParentItemID` int(11) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `taxon`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `taxon` (
  `TaxonID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `Author` varchar(128) DEFAULT NULL,
  `CitesStatus` varchar(32) DEFAULT NULL,
  `COLStatus` varchar(32) DEFAULT NULL,
  `CommonName` varchar(128) DEFAULT NULL,
  `CultivarName` varchar(32) DEFAULT NULL,
  `EnvironmentalProtectionStatus` varchar(64) DEFAULT NULL,
  `EsaStatus` varchar(64) DEFAULT NULL,
  `FullName` varchar(255) DEFAULT NULL,
  `GroupNumber` varchar(20) DEFAULT NULL,
  `GUID` varchar(128) DEFAULT NULL,
  `HighestChildNodeNumber` int(11) DEFAULT NULL,
  `Integer1` bigint(20) DEFAULT NULL,
  `Integer2` bigint(20) DEFAULT NULL,
  `Integer3` bigint(20) DEFAULT NULL,
  `Integer4` int(11) DEFAULT NULL,
  `Integer5` int(11) DEFAULT NULL,
  `IsAccepted` bit(1) NOT NULL,
  `IsHybrid` bit(1) NOT NULL,
  `IsisNumber` varchar(16) DEFAULT NULL,
  `LabelFormat` varchar(64) DEFAULT NULL,
  `Name` varchar(64) NOT NULL,
  `NcbiTaxonNumber` varchar(8) DEFAULT NULL,
  `NodeNumber` int(11) DEFAULT NULL,
  `Number1` int(11) DEFAULT NULL,
  `Number2` int(11) DEFAULT NULL,
  `Number3` float(20,10) DEFAULT NULL,
  `Number4` float(20,10) DEFAULT NULL,
  `Number5` float(20,10) DEFAULT NULL,
  `RankID` int(11) NOT NULL,
  `Remarks` text DEFAULT NULL,
  `Source` varchar(64) DEFAULT NULL,
  `TaxonomicSerialNumber` varchar(50) DEFAULT NULL,
  `Text1` varchar(32) DEFAULT NULL,
  `Text10` varchar(128) DEFAULT NULL,
  `Text11` varchar(128) DEFAULT NULL,
  `Text12` varchar(128) DEFAULT NULL,
  `Text13` varchar(128) DEFAULT NULL,
  `Text14` varchar(256) DEFAULT NULL,
  `Text15` varchar(256) DEFAULT NULL,
  `Text16` varchar(256) DEFAULT NULL,
  `Text17` varchar(256) DEFAULT NULL,
  `Text18` varchar(256) DEFAULT NULL,
  `Text19` varchar(256) DEFAULT NULL,
  `Text2` varchar(32) DEFAULT NULL,
  `Text20` varchar(256) DEFAULT NULL,
  `Text3` text DEFAULT NULL,
  `Text4` text DEFAULT NULL,
  `Text5` text DEFAULT NULL,
  `Text6` text DEFAULT NULL,
  `Text7` text DEFAULT NULL,
  `Text8` text DEFAULT NULL,
  `Text9` text DEFAULT NULL,
  `UnitInd1` varchar(50) DEFAULT NULL,
  `UnitInd2` varchar(50) DEFAULT NULL,
  `UnitInd3` varchar(50) DEFAULT NULL,
  `UnitInd4` varchar(50) DEFAULT NULL,
  `UnitName1` varchar(50) DEFAULT NULL,
  `UnitName2` varchar(50) DEFAULT NULL,
  `UnitName3` varchar(50) DEFAULT NULL,
  `UnitName4` varchar(50) DEFAULT NULL,
  `UsfwsCode` varchar(16) DEFAULT NULL,
  `Visibility` tinyint(4) DEFAULT NULL,
  `YesNo1` bit(1) DEFAULT NULL,
  `YesNo10` bit(1) DEFAULT NULL,
  `YesNo11` bit(1) DEFAULT NULL,
  `YesNo12` bit(1) DEFAULT NULL,
  `YesNo13` bit(1) DEFAULT NULL,
  `YesNo14` bit(1) DEFAULT NULL,
  `YesNo15` bit(1) DEFAULT NULL,
  `YesNo16` bit(1) DEFAULT NULL,
  `YesNo17` bit(1) DEFAULT NULL,
  `YesNo18` bit(1) DEFAULT NULL,
  `YesNo19` bit(1) DEFAULT NULL,
  `YesNo2` bit(1) DEFAULT NULL,
  `YesNo3` bit(1) DEFAULT NULL,
  `YesNo4` bit(1) DEFAULT NULL,
  `YesNo5` bit(1) DEFAULT NULL,
  `YesNo6` bit(1) DEFAULT NULL,
  `YesNo7` bit(1) DEFAULT NULL,
  `YesNo8` bit(1) DEFAULT NULL,
  `YesNo9` bit(1) DEFAULT NULL,
  `VisibilitySetByID` int(11) DEFAULT NULL,
  `ParentID` int(11) DEFAULT NULL,
  `AcceptedID` int(11) DEFAULT NULL,
  `HybridParent1ID` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `TaxonTreeDefItemID` int(11) NOT NULL,
  `TaxonTreeDefID` int(11) NOT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `HybridParent2ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `taxonattachment`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `taxonattachment` (
  `TaxonAttachmentID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `Ordinal` int(11) NOT NULL,
  `Remarks` text DEFAULT NULL,
  `AttachmentID` int(11) NOT NULL,
  `TaxonID` int(11) NOT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `taxoncitation`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `taxoncitation` (
  `TaxonCitationID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `Number1` float(20,10) DEFAULT NULL,
  `Number2` float(20,10) DEFAULT NULL,
  `Remarks` text DEFAULT NULL,
  `Text1` text DEFAULT NULL,
  `Text2` text DEFAULT NULL,
  `YesNo1` bit(1) DEFAULT NULL,
  `YesNo2` bit(1) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `ReferenceWorkID` int(11) NOT NULL,
  `TaxonID` int(11) NOT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `taxontreedef`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `taxontreedef` (
  `TaxonTreeDefID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `FullNameDirection` int(11) DEFAULT NULL,
  `Name` varchar(64) NOT NULL,
  `Remarks` varchar(255) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `taxontreedefitem`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `taxontreedefitem` (
  `TaxonTreeDefItemID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `FormatToken` varchar(32) DEFAULT NULL,
  `FullNameSeparator` varchar(32) DEFAULT NULL,
  `IsEnforced` bit(1) DEFAULT NULL,
  `IsInFullName` bit(1) DEFAULT NULL,
  `Name` varchar(64) NOT NULL,
  `RankID` int(11) NOT NULL,
  `Remarks` text DEFAULT NULL,
  `TextAfter` varchar(64) DEFAULT NULL,
  `TextBefore` varchar(64) DEFAULT NULL,
  `Title` varchar(64) DEFAULT NULL,
  `TaxonTreeDefID` int(11) NOT NULL,
  `ParentItemID` int(11) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `treatmentevent`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `treatmentevent` (
  `TreatmentEventID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `DateBoxed` date DEFAULT NULL,
  `DateCleaned` date DEFAULT NULL,
  `DateCompleted` date DEFAULT NULL,
  `DateReceived` date DEFAULT NULL,
  `DateToIsolation` date DEFAULT NULL,
  `DateTreatmentEnded` date DEFAULT NULL,
  `DateTreatmentStarted` date DEFAULT NULL,
  `FieldNumber` varchar(50) DEFAULT NULL,
  `Storage` varchar(64) DEFAULT NULL,
  `Number1` int(11) DEFAULT NULL,
  `Number2` int(11) DEFAULT NULL,
  `Number3` float(20,10) DEFAULT NULL,
  `Number4` float(20,10) DEFAULT NULL,
  `Number5` float(20,10) DEFAULT NULL,
  `Remarks` text DEFAULT NULL,
  `Text1` text DEFAULT NULL,
  `Text2` text DEFAULT NULL,
  `Text3` text DEFAULT NULL,
  `Text4` text DEFAULT NULL,
  `Text5` text DEFAULT NULL,
  `TreatmentNumber` varchar(32) DEFAULT NULL,
  `Type` varchar(32) DEFAULT NULL,
  `YesNo1` bit(1) DEFAULT NULL,
  `YesNo2` bit(1) DEFAULT NULL,
  `YesNo3` bit(1) DEFAULT NULL,
  `DivisionID` int(11) DEFAULT NULL,
  `CollectionObjectID` int(11) DEFAULT NULL,
  `AccessionID` int(11) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `PerformedByID` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `AuthorizedByID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `treatmenteventattachment`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `treatmenteventattachment` (
  `TreatmentEventAttachmentID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `Ordinal` int(11) NOT NULL,
  `Remarks` text DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `TreatmentEventID` int(11) NOT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `AttachmentID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `workbench`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `workbench` (
  `WorkbenchID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `AllPermissionLevel` int(11) DEFAULT NULL,
  `TableID` int(11) DEFAULT NULL,
  `ExportInstitutionName` varchar(128) DEFAULT NULL,
  `ExportedFromTableName` varchar(128) DEFAULT NULL,
  `FormId` int(11) DEFAULT NULL,
  `GroupPermissionLevel` int(11) DEFAULT NULL,
  `LockedByUserName` varchar(64) DEFAULT NULL,
  `Name` varchar(64) DEFAULT NULL,
  `OwnerPermissionLevel` int(11) DEFAULT NULL,
  `Remarks` text DEFAULT NULL,
  `SrcFilePath` varchar(255) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `WorkbenchTemplateID` int(11) NOT NULL,
  `SpecifyUserID` int(11) NOT NULL,
  `SpPrincipalID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `workbenchdataitem`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `workbenchdataitem` (
  `WorkbenchDataItemID` int(11) NOT NULL,
  `CellData` text DEFAULT NULL,
  `RowNumber` smallint(6) DEFAULT NULL,
  `ValidationStatus` smallint(6) DEFAULT NULL,
  `WorkbenchRowID` int(11) NOT NULL,
  `WorkbenchTemplateMappingItemID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `workbenchrow`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `workbenchrow` (
  `WorkbenchRowID` int(11) NOT NULL,
  `BioGeomancerResults` text DEFAULT NULL,
  `CardImageData` mediumblob DEFAULT NULL,
  `CardImageFullPath` varchar(255) DEFAULT NULL,
  `ErrorEstimate` decimal(20,10) DEFAULT NULL,
  `ErrorPolygon` text DEFAULT NULL,
  `Lat1Text` varchar(50) DEFAULT NULL,
  `Lat2Text` varchar(50) DEFAULT NULL,
  `Long1Text` varchar(50) DEFAULT NULL,
  `Long2Text` varchar(50) DEFAULT NULL,
  `RecordID` int(11) DEFAULT NULL,
  `RowNumber` smallint(6) DEFAULT NULL,
  `SGRStatus` tinyint(4) DEFAULT NULL,
  `UploadStatus` tinyint(4) DEFAULT NULL,
  `WorkbenchID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `workbenchrowexportedrelationship`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `workbenchrowexportedrelationship` (
  `WorkbenchRowExportedRelationshipID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `RecordID` int(11) DEFAULT NULL,
  `RelationshipName` varchar(120) DEFAULT NULL,
  `Sequence` int(11) DEFAULT NULL,
  `TableName` varchar(120) DEFAULT NULL,
  `WorkbenchRowID` int(11) NOT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `workbenchrowimage`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `workbenchrowimage` (
  `WorkbenchRowImageID` int(11) NOT NULL,
  `AttachToTableName` varchar(64) DEFAULT NULL,
  `CardImageData` mediumblob DEFAULT NULL,
  `CardImageFullPath` varchar(255) DEFAULT NULL,
  `ImageOrder` int(11) DEFAULT NULL,
  `WorkbenchRowID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `workbenchtemplate`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `workbenchtemplate` (
  `WorkbenchTemplateID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `Name` varchar(64) DEFAULT NULL,
  `Remarks` text DEFAULT NULL,
  `SrcFilePath` varchar(255) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `SpecifyUserID` int(11) NOT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `workbenchtemplatemappingitem`
--
-- Création :  lun. 31 déc. 2018 à 09:37
--

CREATE TABLE `workbenchtemplatemappingitem` (
  `WorkbenchTemplateMappingItemID` int(11) NOT NULL,
  `TimestampCreated` datetime NOT NULL,
  `TimestampModified` datetime DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `XCoord` smallint(6) DEFAULT NULL,
  `YCoord` smallint(6) DEFAULT NULL,
  `Caption` varchar(64) DEFAULT NULL,
  `CarryForward` bit(1) DEFAULT NULL,
  `DataFieldLength` smallint(6) DEFAULT NULL,
  `FieldName` varchar(255) DEFAULT NULL,
  `FieldType` smallint(6) DEFAULT NULL,
  `ImportedColName` varchar(255) DEFAULT NULL,
  `IsEditable` bit(1) DEFAULT NULL,
  `IsExportableToContent` bit(1) DEFAULT NULL,
  `IsIncludedInTitle` bit(1) DEFAULT NULL,
  `IsRequired` bit(1) DEFAULT NULL,
  `MetaData` varchar(128) DEFAULT NULL,
  `DataColumnIndex` smallint(6) DEFAULT NULL,
  `TableId` int(11) DEFAULT NULL,
  `TableName` varchar(64) DEFAULT NULL,
  `ViewOrder` smallint(6) DEFAULT NULL,
  `CreatedByAgentID` int(11) DEFAULT NULL,
  `ModifiedByAgentID` int(11) DEFAULT NULL,
  `WorkbenchTemplateID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `accession`
--
ALTER TABLE `accession`
  ADD PRIMARY KEY (`AccessionID`),
  ADD KEY `AccessionNumberIDX` (`AccessionNumber`),
  ADD KEY `AccessionDateIDX` (`DateAccessioned`),
  ADD KEY `FK81EF38247699B003` (`CreatedByAgentID`),
  ADD KEY `FK81EF3824DC8B4810` (`AddressOfRecordID`),
  ADD KEY `FK81EF38243EBC6278` (`RepositoryAgreementID`),
  ADD KEY `FK81EF382497C961D8` (`DivisionID`),
  ADD KEY `FK81EF38245327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `accessionagent`
--
ALTER TABLE `accessionagent`
  ADD PRIMARY KEY (`AccessionAgentID`),
  ADD UNIQUE KEY `Role` (`Role`,`AgentID`,`AccessionID`),
  ADD KEY `FK2DC981617699B003` (`CreatedByAgentID`),
  ADD KEY `FK2DC98161384B3622` (`AgentID`),
  ADD KEY `FK2DC981613EBC6278` (`RepositoryAgreementID`),
  ADD KEY `FK2DC981613925EE20` (`AccessionID`),
  ADD KEY `FK2DC981615327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `accessionattachment`
--
ALTER TABLE `accessionattachment`
  ADD PRIMARY KEY (`AccessionAttachmentID`),
  ADD KEY `FKA569B4477699B003` (`CreatedByAgentID`),
  ADD KEY `FKA569B447C7E55084` (`AttachmentID`),
  ADD KEY `FKA569B4473925EE20` (`AccessionID`),
  ADD KEY `FKA569B4475327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `accessionauthorization`
--
ALTER TABLE `accessionauthorization`
  ADD PRIMARY KEY (`AccessionAuthorizationID`),
  ADD KEY `FK4F2602D57699B003` (`CreatedByAgentID`),
  ADD KEY `FK4F2602D53EBC6278` (`RepositoryAgreementID`),
  ADD KEY `FK4F2602D5AD1F31F4` (`PermitID`),
  ADD KEY `FK4F2602D53925EE20` (`AccessionID`),
  ADD KEY `FK4F2602D55327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`AddressID`),
  ADD KEY `FKBB979BF47699B003` (`CreatedByAgentID`),
  ADD KEY `FKBB979BF4384B3622` (`AgentID`),
  ADD KEY `FKBB979BF45327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `addressofrecord`
--
ALTER TABLE `addressofrecord`
  ADD PRIMARY KEY (`AddressOfRecordID`),
  ADD KEY `FKDBAAE4DC7699B003` (`CreatedByAgentID`),
  ADD KEY `FKDBAAE4DC384B3622` (`AgentID`),
  ADD KEY `FKDBAAE4DC5327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `agent`
--
ALTER TABLE `agent`
  ADD PRIMARY KEY (`AgentID`),
  ADD KEY `AgentLastNameIDX` (`LastName`),
  ADD KEY `AgentFirstNameIDX` (`FirstName`),
  ADD KEY `AbbreviationIDX` (`Abbreviation`),
  ADD KEY `AgentTypeIDX` (`AgentType`),
  ADD KEY `AgentGuidIDX` (`GUID`),
  ADD KEY `FK58743057699B003` (`CreatedByAgentID`),
  ADD KEY `FK587430587F159B7` (`InstitutionTCID`),
  ADD KEY `FK58743054834EDBB` (`InstitutionTCID`),
  ADD KEY `FK58743053D2DAD9A` (`CollectionCCID`),
  ADD KEY `FK587430584B8A3FA` (`ParentOrganizationID`),
  ADD KEY `FK587430597C961D8` (`DivisionID`),
  ADD KEY `FK58743054BDD9E10` (`SpecifyUserID`),
  ADD KEY `FK587430587E99F68` (`InstitutionCCID`),
  ADD KEY `FK58743055327F942` (`ModifiedByAgentID`),
  ADD KEY `FK58743053D3567E9` (`CollectionTCID`);

--
-- Index pour la table `agentattachment`
--
ALTER TABLE `agentattachment`
  ADD PRIMARY KEY (`AgentAttachmentID`),
  ADD KEY `FK56FE59E87699B003` (`CreatedByAgentID`),
  ADD KEY `FK56FE59E8384B3622` (`AgentID`),
  ADD KEY `FK56FE59E8C7E55084` (`AttachmentID`),
  ADD KEY `FK56FE59E85327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `agentgeography`
--
ALTER TABLE `agentgeography`
  ADD PRIMARY KEY (`AgentGeographyID`),
  ADD KEY `FK89CDCA177699B003` (`CreatedByAgentID`),
  ADD KEY `FK89CDCA17384B3622` (`AgentID`),
  ADD KEY `FK89CDCA17D649F6D0` (`GeographyID`),
  ADD KEY `FK89CDCA175327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `agentspecialty`
--
ALTER TABLE `agentspecialty`
  ADD PRIMARY KEY (`AgentSpecialtyID`),
  ADD UNIQUE KEY `AgentID` (`AgentID`,`OrderNumber`),
  ADD KEY `FKDB5F57997699B003` (`CreatedByAgentID`),
  ADD KEY `FKDB5F5799384B3622` (`AgentID`),
  ADD KEY `FKDB5F57995327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `agentvariant`
--
ALTER TABLE `agentvariant`
  ADD PRIMARY KEY (`AgentVariantID`),
  ADD KEY `FK8DA4DE07699B003` (`CreatedByAgentID`),
  ADD KEY `FK8DA4DE0384B3622` (`AgentID`),
  ADD KEY `FK8DA4DE05327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `appraisal`
--
ALTER TABLE `appraisal`
  ADD PRIMARY KEY (`AppraisalID`),
  ADD UNIQUE KEY `AppraisalNumber` (`AppraisalNumber`),
  ADD KEY `AppraisalDateIDX` (`AppraisalDate`),
  ADD KEY `AppraisalNumberIDX` (`AppraisalNumber`),
  ADD KEY `FK8D3C72E57699B003` (`CreatedByAgentID`),
  ADD KEY `FK8D3C72E5384B3622` (`AgentID`),
  ADD KEY `FK8D3C72E53925EE20` (`AccessionID`),
  ADD KEY `FK8D3C72E55327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `attachment`
--
ALTER TABLE `attachment`
  ADD PRIMARY KEY (`AttachmentID`),
  ADD KEY `TitleIDX` (`Title`),
  ADD KEY `AttchScopeIDIDX` (`ScopeID`),
  ADD KEY `AttchScopeTypeIDX` (`ScopeType`),
  ADD KEY `AttchmentGuidIDX` (`GUID`),
  ADD KEY `DateImagedIDX` (`DateImaged`),
  ADD KEY `FK8AF759237699B003` (`CreatedByAgentID`),
  ADD KEY `FK8AF75923C620DBC6` (`AttachmentImageAttributeID`),
  ADD KEY `FK8AF759237BF1F70B` (`VisibilitySetByID`),
  ADD KEY `FK8AF759239B37C589` (`CreatorID`),
  ADD KEY `FK8AF759235327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `attachmentimageattribute`
--
ALTER TABLE `attachmentimageattribute`
  ADD PRIMARY KEY (`AttachmentImageAttributeID`),
  ADD KEY `FK857D77847699B003` (`CreatedByAgentID`),
  ADD KEY `FK857D77845327F942` (`ModifiedByAgentID`),
  ADD KEY `FK857D7784FD8D2A2A` (`MorphBankViewID`);

--
-- Index pour la table `attachmentmetadata`
--
ALTER TABLE `attachmentmetadata`
  ADD PRIMARY KEY (`AttachmentMetadataID`),
  ADD KEY `FK991701527699B003` (`CreatedByAgentID`),
  ADD KEY `FK99170152C7E55084` (`AttachmentID`),
  ADD KEY `FK991701525327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `attachmenttag`
--
ALTER TABLE `attachmenttag`
  ADD PRIMARY KEY (`AttachmentTagID`),
  ADD KEY `FKA62FAF977699B003` (`CreatedByAgentID`),
  ADD KEY `FKA62FAF97C7E55084` (`AttachmentID`),
  ADD KEY `FKA62FAF975327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `attributedef`
--
ALTER TABLE `attributedef`
  ADD PRIMARY KEY (`AttributeDefID`),
  ADD KEY `FKC36883E97699B003` (`CreatedByAgentID`),
  ADD KEY `FKC36883E94CE675DE` (`DisciplineID`),
  ADD KEY `FKC36883E96E8973EC` (`PrepTypeID`),
  ADD KEY `FKC36883E95327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`AuthorID`),
  ADD UNIQUE KEY `ReferenceWorkID` (`ReferenceWorkID`,`AgentID`),
  ADD KEY `FKAC2D218B7699B003` (`CreatedByAgentID`),
  ADD KEY `FKAC2D218B384B3622` (`AgentID`),
  ADD KEY `FKAC2D218B69734F30` (`ReferenceWorkID`),
  ADD KEY `FKAC2D218B5327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `autonumberingscheme`
--
ALTER TABLE `autonumberingscheme`
  ADD PRIMARY KEY (`AutoNumberingSchemeID`),
  ADD KEY `SchemeNameIDX` (`SchemeName`),
  ADD KEY `FK8227D14F7699B003` (`CreatedByAgentID`),
  ADD KEY `FK8227D14F5327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `autonumsch_coll`
--
ALTER TABLE `autonumsch_coll`
  ADD PRIMARY KEY (`CollectionID`,`AutoNumberingSchemeID`),
  ADD KEY `FK46F04F2AFE55DD76` (`AutoNumberingSchemeID`),
  ADD KEY `FK46F04F2A8C2288BA` (`CollectionID`);

--
-- Index pour la table `autonumsch_div`
--
ALTER TABLE `autonumsch_div`
  ADD PRIMARY KEY (`DivisionID`,`AutoNumberingSchemeID`),
  ADD KEY `FKA8BE493FE55DD76` (`AutoNumberingSchemeID`),
  ADD KEY `FKA8BE49397C961D8` (`DivisionID`);

--
-- Index pour la table `autonumsch_dsp`
--
ALTER TABLE `autonumsch_dsp`
  ADD PRIMARY KEY (`DisciplineID`,`AutoNumberingSchemeID`),
  ADD KEY `FKA8BE5C3FE55DD76` (`AutoNumberingSchemeID`),
  ADD KEY `FKA8BE5C34CE675DE` (`DisciplineID`);

--
-- Index pour la table `borrow`
--
ALTER TABLE `borrow`
  ADD PRIMARY KEY (`BorrowID`),
  ADD KEY `BorInvoiceNumberIDX` (`InvoiceNumber`),
  ADD KEY `BorReceivedDateIDX` (`ReceivedDate`),
  ADD KEY `BorColMemIDX` (`CollectionMemberID`),
  ADD KEY `FKAD8CA9F57699B003` (`CreatedByAgentID`),
  ADD KEY `FKAD8CA9F5DC8B4810` (`AddressOfRecordID`),
  ADD KEY `FKAD8CA9F55327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `borrowagent`
--
ALTER TABLE `borrowagent`
  ADD PRIMARY KEY (`BorrowAgentID`),
  ADD UNIQUE KEY `Role` (`Role`,`AgentID`,`BorrowID`),
  ADD KEY `BorColMemIDX2` (`CollectionMemberID`),
  ADD KEY `FKF48F8A307699B003` (`CreatedByAgentID`),
  ADD KEY `FKF48F8A30384B3622` (`AgentID`),
  ADD KEY `FKF48F8A30F8BF6F28` (`BorrowID`),
  ADD KEY `FKF48F8A305327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `borrowattachment`
--
ALTER TABLE `borrowattachment`
  ADD PRIMARY KEY (`BorrowAttachmentID`),
  ADD KEY `FK3263D4D87699B003` (`CreatedByAgentID`),
  ADD KEY `FK3263D4D8F8BF6F28` (`BorrowID`),
  ADD KEY `FK3263D4D8C7E55084` (`AttachmentID`),
  ADD KEY `FK3263D4D85327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `borrowmaterial`
--
ALTER TABLE `borrowmaterial`
  ADD PRIMARY KEY (`BorrowMaterialID`),
  ADD KEY `DescriptionIDX` (`Description`),
  ADD KEY `BorMaterialNumberIDX` (`MaterialNumber`),
  ADD KEY `BorMaterialColMemIDX` (`CollectionMemberID`),
  ADD KEY `FK86254A1C7699B003` (`CreatedByAgentID`),
  ADD KEY `FK86254A1CF8BF6F28` (`BorrowID`),
  ADD KEY `FK86254A1C5327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `borrowreturnmaterial`
--
ALTER TABLE `borrowreturnmaterial`
  ADD PRIMARY KEY (`BorrowReturnMaterialID`),
  ADD KEY `BorrowReturnedDateIDX` (`ReturnedDate`),
  ADD KEY `BorrowReturnedColMemIDX` (`CollectionMemberID`),
  ADD KEY `FKA8170B8C7699B003` (`CreatedByAgentID`),
  ADD KEY `FKA8170B8CC6A93143` (`ReturnedByID`),
  ADD KEY `FKA8170B8C83F392D6` (`BorrowMaterialID`),
  ADD KEY `FKA8170B8C5327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `collectingevent`
--
ALTER TABLE `collectingevent`
  ADD PRIMARY KEY (`CollectingEventID`),
  ADD KEY `CEStationFieldNumberIDX` (`StationFieldNumber`),
  ADD KEY `CEGuidIDX` (`GUID`),
  ADD KEY `CEStartDateIDX` (`StartDate`),
  ADD KEY `CEEndDateIDX` (`EndDate`),
  ADD KEY `FKFEB30F227699B003` (`CreatedByAgentID`),
  ADD KEY `FKFEB30F227BF1F70B` (`VisibilitySetByID`),
  ADD KEY `FKFEB30F2297ECD2B2` (`PaleoContextID`),
  ADD KEY `FKFEB30F22FEB93AB2` (`CollectingEventAttributeID`),
  ADD KEY `FKFEB30F22697B3F98` (`CollectingTripID`),
  ADD KEY `FKFEB30F224CE675DE` (`DisciplineID`),
  ADD KEY `FKFEB30F22A666A5C4` (`LocalityID`),
  ADD KEY `FKFEB30F225327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `collectingeventattachment`
--
ALTER TABLE `collectingeventattachment`
  ADD PRIMARY KEY (`CollectingEventAttachmentID`),
  ADD KEY `CEAColMemIDX` (`CollectionMemberID`),
  ADD KEY `FK32C365C57699B003` (`CreatedByAgentID`),
  ADD KEY `FK32C365C5B237E2BC` (`CollectingEventID`),
  ADD KEY `FK32C365C5C7E55084` (`AttachmentID`),
  ADD KEY `FK32C365C55327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `collectingeventattr`
--
ALTER TABLE `collectingeventattr`
  ADD PRIMARY KEY (`AttrID`),
  ADD KEY `COLEVATColMemIDX` (`CollectionMemberID`),
  ADD KEY `FK42A088137699B003` (`CreatedByAgentID`),
  ADD KEY `FK42A08813E84BA7B0` (`AttributeDefID`),
  ADD KEY `FK42A08813B237E2BC` (`CollectingEventID`),
  ADD KEY `FK42A088135327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `collectingeventattribute`
--
ALTER TABLE `collectingeventattribute`
  ADD PRIMARY KEY (`CollectingEventAttributeID`),
  ADD KEY `COLEVATSDispIDX` (`DisciplineID`),
  ADD KEY `FK9AD681BA7699B003` (`CreatedByAgentID`),
  ADD KEY `FK9AD681BA32C0CDC4` (`HostTaxonID`),
  ADD KEY `FK9AD681BA4CE675DE` (`DisciplineID`),
  ADD KEY `FK9AD681BA5327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `collectingtrip`
--
ALTER TABLE `collectingtrip`
  ADD PRIMARY KEY (`CollectingTripID`),
  ADD KEY `COLTRPStartDateIDX` (`StartDate`),
  ADD KEY `COLTRPNameIDX` (`CollectingTripName`),
  ADD KEY `FK1080269D7699B003` (`CreatedByAgentID`),
  ADD KEY `FK1080269D4CE675DE` (`DisciplineID`),
  ADD KEY `FK1080269D5327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `collection`
--
ALTER TABLE `collection`
  ADD PRIMARY KEY (`UserGroupScopeId`),
  ADD KEY `CollectionGuidIDX` (`GUID`),
  ADD KEY `CollectionNameIDX` (`CollectionName`),
  ADD KEY `FK3D0021607699B0039835ae9e` (`CreatedByAgentID`),
  ADD KEY `FK9835AE9E4CE675DE` (`DisciplineID`),
  ADD KEY `FK9835AE9E6F3E820E` (`AdminContactID`),
  ADD KEY `FK9835AE9EDE67F146` (`InstitutionNetworkID`),
  ADD KEY `FK9835AE9E9EAB854A` (`InstitutionNetworkID`),
  ADD KEY `FK3D0021605327F9429835ae9e` (`ModifiedByAgentID`);

--
-- Index pour la table `collectionobject`
--
ALTER TABLE `collectionobject`
  ADD PRIMARY KEY (`CollectionObjectID`),
  ADD UNIQUE KEY `CollectionID` (`CollectionID`,`CatalogNumber`),
  ADD KEY `ColObjGuidIDX` (`GUID`),
  ADD KEY `FieldNumberIDX` (`FieldNumber`),
  ADD KEY `COColMemIDX` (`CollectionMemberID`),
  ADD KEY `CatalogedDateIDX` (`CatalogedDate`),
  ADD KEY `AltCatalogNumberIDX` (`AltCatalogNumber`),
  ADD KEY `CatalogNumberIDX` (`CatalogNumber`),
  ADD KEY `FKC1D4635D73BF3AE0` (`FieldNotebookPageID`),
  ADD KEY `FKC1D4635DA40125AB` (`ContainerOwnerID`),
  ADD KEY `FKC1D4635DA141B896` (`CollectionObjectAttributeID`),
  ADD KEY `FKC1D4635DB15CB762` (`AppraisalID`),
  ADD KEY `FKC1D4635D7699B003` (`CreatedByAgentID`),
  ADD KEY `FKC1D4635D7BF1F70B` (`VisibilitySetByID`),
  ADD KEY `FKC1D4635D9F4EE41` (`InventorizedByID`),
  ADD KEY `FKC1D4635DB237E2BC` (`CollectingEventID`),
  ADD KEY `FKC1D4635D97ECD2B2` (`PaleoContextID`),
  ADD KEY `FKC1D4635DE816739A` (`ContainerID`),
  ADD KEY `FKC1D4635D8C2288BA` (`CollectionID`),
  ADD KEY `FKC1D4635D3925EE20` (`AccessionID`),
  ADD KEY `FKC1D4635D3B87E163` (`CatalogerID`),
  ADD KEY `FKC1D4635D5327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `collectionobjectattachment`
--
ALTER TABLE `collectionobjectattachment`
  ADD PRIMARY KEY (`CollectionObjectAttachmentID`),
  ADD KEY `COLOBJATTColMemIDX` (`CollectionMemberID`),
  ADD KEY `FK9C00EC407699B003` (`CreatedByAgentID`),
  ADD KEY `FK9C00EC4075E37458` (`CollectionObjectID`),
  ADD KEY `FK9C00EC40C7E55084` (`AttachmentID`),
  ADD KEY `FK9C00EC405327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `collectionobjectattr`
--
ALTER TABLE `collectionobjectattr`
  ADD PRIMARY KEY (`AttrID`),
  ADD KEY `COLOBJATRSColMemIDX` (`CollectionMemberID`),
  ADD KEY `FK303746CE7699B003` (`CreatedByAgentID`),
  ADD KEY `FK303746CE75E37458` (`CollectionObjectID`),
  ADD KEY `FK303746CEE84BA7B0` (`AttributeDefID`),
  ADD KEY `FK303746CE5327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `collectionobjectattribute`
--
ALTER TABLE `collectionobjectattribute`
  ADD PRIMARY KEY (`CollectionObjectAttributeID`),
  ADD KEY `COLOBJATTRSColMemIDX` (`CollectionMemberID`),
  ADD KEY `FK32E0BFDF7699B003` (`CreatedByAgentID`),
  ADD KEY `FK32E0BFDF5327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `collectionobjectcitation`
--
ALTER TABLE `collectionobjectcitation`
  ADD PRIMARY KEY (`CollectionObjectCitationID`),
  ADD KEY `COCITColMemIDX` (`CollectionMemberID`),
  ADD KEY `FKAB9FC1447699B003` (`CreatedByAgentID`),
  ADD KEY `FKAB9FC14475E37458` (`CollectionObjectID`),
  ADD KEY `FKAB9FC14469734F30` (`ReferenceWorkID`),
  ADD KEY `FKAB9FC1445327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `collectionrelationship`
--
ALTER TABLE `collectionrelationship`
  ADD PRIMARY KEY (`CollectionRelationshipID`),
  ADD KEY `FK246327D67699B003` (`CreatedByAgentID`),
  ADD KEY `FK246327D678903837` (`LeftSideCollectionID`),
  ADD KEY `FK246327D6637B3A82` (`CollectionRelTypeID`),
  ADD KEY `FK246327D68240904C` (`RightSideCollectionID`),
  ADD KEY `FK246327D65327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `collectionreltype`
--
ALTER TABLE `collectionreltype`
  ADD PRIMARY KEY (`CollectionRelTypeID`),
  ADD KEY `FK1CAC96F57699B003` (`CreatedByAgentID`),
  ADD KEY `FK1CAC96F5CB93CD98` (`LeftSideCollectionID`),
  ADD KEY `FK1CAC96F5D54425AD` (`RightSideCollectionID`),
  ADD KEY `FK1CAC96F55327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `collector`
--
ALTER TABLE `collector`
  ADD PRIMARY KEY (`CollectorID`),
  ADD UNIQUE KEY `AgentID` (`AgentID`,`CollectingEventID`),
  ADD KEY `COLTRDivIDX` (`DivisionID`),
  ADD KEY `FK7043CC8D7699B003` (`CreatedByAgentID`),
  ADD KEY `FK7043CC8D384B3622` (`AgentID`),
  ADD KEY `FK7043CC8DB237E2BC` (`CollectingEventID`),
  ADD KEY `FK7043CC8D97C961D8` (`DivisionID`),
  ADD KEY `FK7043CC8D5327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `commonnametx`
--
ALTER TABLE `commonnametx`
  ADD PRIMARY KEY (`CommonNameTxID`),
  ADD KEY `CommonNameTxNameIDX` (`Name`),
  ADD KEY `CommonNameTxCountryIDX` (`Country`),
  ADD KEY `FK3413DFFA7699B003` (`CreatedByAgentID`),
  ADD KEY `FK3413DFFA1D39F06C` (`TaxonID`),
  ADD KEY `FK3413DFFA5327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `commonnametxcitation`
--
ALTER TABLE `commonnametxcitation`
  ADD PRIMARY KEY (`CommonNameTxCitationID`),
  ADD KEY `FK829B50E17699B003` (`CreatedByAgentID`),
  ADD KEY `FK829B50E169734F30` (`ReferenceWorkID`),
  ADD KEY `FK829B50E115A0FFF2` (`CommonNameTxID`),
  ADD KEY `FK829B50E15327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `conservdescription`
--
ALTER TABLE `conservdescription`
  ADD PRIMARY KEY (`ConservDescriptionID`),
  ADD KEY `ConservDescShortDescIDX` (`ShortDesc`),
  ADD KEY `FKC040F4647699B003` (`CreatedByAgentID`),
  ADD KEY `FKC040F46475E37458` (`CollectionObjectID`),
  ADD KEY `FKC040F46497C961D8` (`DivisionID`),
  ADD KEY `FKC040F4645327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `conservdescriptionattachment`
--
ALTER TABLE `conservdescriptionattachment`
  ADD PRIMARY KEY (`ConservDescriptionAttachmentID`),
  ADD KEY `FK1EED20877699B003` (`CreatedByAgentID`),
  ADD KEY `FK1EED20878FF9CFA6` (`ConservDescriptionID`),
  ADD KEY `FK1EED2087C7E55084` (`AttachmentID`),
  ADD KEY `FK1EED20875327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `conservevent`
--
ALTER TABLE `conservevent`
  ADD PRIMARY KEY (`ConservEventID`),
  ADD KEY `ConservCompletedDateIDX` (`CompletedDate`),
  ADD KEY `ConservExamDateIDX` (`ExamDate`),
  ADD KEY `FK74A8510271496BD2` (`TreatedByAgentID`),
  ADD KEY `FK74A851027699B003` (`CreatedByAgentID`),
  ADD KEY `FK74A8510227E00C28` (`ExaminedByAgentID`),
  ADD KEY `FK74A85102828C4E73` (`CuratorID`),
  ADD KEY `FK74A851028FF9CFA6` (`ConservDescriptionID`),
  ADD KEY `FK74A851025327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `conserveventattachment`
--
ALTER TABLE `conserveventattachment`
  ADD PRIMARY KEY (`ConservEventAttachmentID`),
  ADD KEY `FKD3F7CFA57699B003` (`CreatedByAgentID`),
  ADD KEY `FKD3F7CFA5F849E7A2` (`ConservEventID`),
  ADD KEY `FKD3F7CFA5C7E55084` (`AttachmentID`),
  ADD KEY `FKD3F7CFA55327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `container`
--
ALTER TABLE `container`
  ADD PRIMARY KEY (`ContainerID`),
  ADD KEY `ContainerNameIDX` (`Name`),
  ADD KEY `ContainerMemIDX` (`CollectionMemberID`),
  ADD KEY `FKE7814C817699B003` (`CreatedByAgentID`),
  ADD KEY `FKE7814C8121C1C983` (`ParentID`),
  ADD KEY `FKE7814C815327F942` (`ModifiedByAgentID`),
  ADD KEY `FKE7814C81EB48144E` (`StorageID`);

--
-- Index pour la table `datatype`
--
ALTER TABLE `datatype`
  ADD PRIMARY KEY (`DataTypeID`),
  ADD KEY `FK6AB199E47699B003` (`CreatedByAgentID`),
  ADD KEY `FK6AB199E45327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `deaccession`
--
ALTER TABLE `deaccession`
  ADD PRIMARY KEY (`DeaccessionID`),
  ADD KEY `DeaccessionNumberIDX` (`DeaccessionNumber`),
  ADD KEY `DeaccessionDateIDX` (`DeaccessionDate`),
  ADD KEY `FKC3EACC37699B003` (`CreatedByAgentID`),
  ADD KEY `FKC3EACC33925EE20` (`AccessionID`),
  ADD KEY `FKC3EACC35327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `deaccessionagent`
--
ALTER TABLE `deaccessionagent`
  ADD PRIMARY KEY (`DeaccessionAgentID`),
  ADD UNIQUE KEY `Role` (`Role`,`AgentID`,`DeaccessionID`),
  ADD KEY `FKBE5518227699B003` (`CreatedByAgentID`),
  ADD KEY `FKBE551822384B3622` (`AgentID`),
  ADD KEY `FKBE551822BE26B05E` (`DeaccessionID`),
  ADD KEY `FKBE5518225327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `deaccessionpreparation`
--
ALTER TABLE `deaccessionpreparation`
  ADD PRIMARY KEY (`DeaccessionPreparationID`),
  ADD KEY `FK6A06F1F47699B003` (`CreatedByAgentID`),
  ADD KEY `FK6A06F1F4BE26B05E` (`DeaccessionID`),
  ADD KEY `FK6A06F1F418627F06` (`PreparationID`),
  ADD KEY `FK6A06F1F45327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `determination`
--
ALTER TABLE `determination`
  ADD PRIMARY KEY (`DeterminationID`),
  ADD KEY `AlterNameIDX` (`AlternateName`),
  ADD KEY `DetMemIDX` (`CollectionMemberID`),
  ADD KEY `TypeStatusNameIDX` (`TypeStatusName`),
  ADD KEY `DeterminedDateIDX` (`DeterminedDate`),
  ADD KEY `DeterminationGuidIDX` (`GUID`),
  ADD KEY `FKC1E98FE37699B003` (`CreatedByAgentID`),
  ADD KEY `FKC1E98FE375E37458` (`CollectionObjectID`),
  ADD KEY `FKC1E98FE3E9268B1C` (`DeterminerID`),
  ADD KEY `FKC1E98FE31D39F06C` (`TaxonID`),
  ADD KEY `FKC1E98FE35327F942` (`ModifiedByAgentID`),
  ADD KEY `FKC1E98FE3280D00CB` (`PreferredTaxonID`);

--
-- Index pour la table `determinationcitation`
--
ALTER TABLE `determinationcitation`
  ADD PRIMARY KEY (`DeterminationCitationID`),
  ADD UNIQUE KEY `ReferenceWorkID` (`ReferenceWorkID`,`DeterminationID`),
  ADD KEY `DetCitColMemIDX` (`CollectionMemberID`),
  ADD KEY `FK259B07CA7699B003` (`CreatedByAgentID`),
  ADD KEY `FK259B07CA69734F30` (`ReferenceWorkID`),
  ADD KEY `FK259B07CA47AE835E` (`DeterminationID`),
  ADD KEY `FK259B07CA5327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `discipline`
--
ALTER TABLE `discipline`
  ADD PRIMARY KEY (`UserGroupScopeId`),
  ADD KEY `DisciplineNameIDX` (`Name`),
  ADD KEY `FK157B9B709988ED70` (`GeologicTimePeriodTreeDefID`),
  ADD KEY `FK3D0021607699B003157b9b70` (`CreatedByAgentID`),
  ADD KEY `FK157B9B70EFA9D5F8` (`TaxonTreeDefID`),
  ADD KEY `FK157B9B70BF9C9714` (`GeographyTreeDefID`),
  ADD KEY `FK157B9B7097C961D8` (`DivisionID`),
  ADD KEY `FK157B9B7072939D3A` (`LithoStratTreeDefID`),
  ADD KEY `FK157B9B70D62E36A6` (`DataTypeID`),
  ADD KEY `FK3D0021605327F942157b9b70` (`ModifiedByAgentID`);

--
-- Index pour la table `division`
--
ALTER TABLE `division`
  ADD PRIMARY KEY (`UserGroupScopeId`),
  ADD KEY `DivisionNameIDX` (`Name`),
  ADD KEY `FK3D0021607699B00315bd30ad` (`CreatedByAgentID`),
  ADD KEY `FK15BD30AD81223908` (`InstitutionID`),
  ADD KEY `FK15BD30ADE6A64D00` (`AddressID`),
  ADD KEY `FK3D0021605327F94215bd30ad` (`ModifiedByAgentID`);

--
-- Index pour la table `dnaprimer`
--
ALTER TABLE `dnaprimer`
  ADD PRIMARY KEY (`DNAPrimerID`),
  ADD KEY `DesignatorIDX` (`PrimerDesignator`),
  ADD KEY `FK5E4FB5AA7699B003` (`CreatedByAgentID`),
  ADD KEY `FK5E4FB5AA5327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `dnasequence`
--
ALTER TABLE `dnasequence`
  ADD PRIMARY KEY (`DnaSequenceID`),
  ADD KEY `BOLDSampleIDX` (`BOLDSampleID`),
  ADD KEY `BOLDBarcodeIDX` (`BOLDBarcodeID`),
  ADD KEY `GenBankAccIDX` (`GenBankAccessionNumber`),
  ADD KEY `FK9F42F5D8A1F7C080` (`MaterialSampleID`),
  ADD KEY `FK9F42F5D87699B003` (`CreatedByAgentID`),
  ADD KEY `FK9F42F5D875E37458` (`CollectionObjectID`),
  ADD KEY `FK9F42F5D8384B3622` (`AgentID`),
  ADD KEY `FK9F42F5D85327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `dnasequenceattachment`
--
ALTER TABLE `dnasequenceattachment`
  ADD PRIMARY KEY (`DnaSequenceAttachmentId`),
  ADD KEY `FKFFC2E0FB7699B003` (`CreatedByAgentID`),
  ADD KEY `FKFFC2E0FBC7E55084` (`AttachmentID`),
  ADD KEY `FKFFC2E0FB265FB168` (`DnaSequenceID`),
  ADD KEY `FKFFC2E0FB5327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `dnasequencerunattachment`
--
ALTER TABLE `dnasequencerunattachment`
  ADD PRIMARY KEY (`DnaSequencingRunAttachmentId`),
  ADD KEY `FKD0DAEB167699B003` (`CreatedByAgentID`),
  ADD KEY `FKD0DAEB16C7E55084` (`AttachmentID`),
  ADD KEY `FKD0DAEB1678F036AA` (`DnaSequencingRunID`),
  ADD KEY `FKD0DAEB165327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `dnasequencingrun`
--
ALTER TABLE `dnasequencingrun`
  ADD PRIMARY KEY (`DNASequencingRunID`),
  ADD KEY `FK2AF6F9D67699B003` (`CreatedByAgentID`),
  ADD KEY `FK2AF6F9D6D76CA4E` (`PreparedByAgentID`),
  ADD KEY `FK2AF6F9D68C3587CC` (`DNAPrimerID`),
  ADD KEY `FK2AF6F9D6851BDBC0` (`RunByAgentID`),
  ADD KEY `FK2AF6F9D6265FB168` (`DNASequenceID`),
  ADD KEY `FK2AF6F9D65327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `dnasequencingruncitation`
--
ALTER TABLE `dnasequencingruncitation`
  ADD PRIMARY KEY (`DNASequencingRunCitationID`),
  ADD KEY `FK24CEBD7699B003` (`CreatedByAgentID`),
  ADD KEY `FK24CEBD69734F30` (`ReferenceWorkID`),
  ADD KEY `FK24CEBD78F036AA` (`DNASequencingRunID`),
  ADD KEY `FK24CEBD5327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `exchangein`
--
ALTER TABLE `exchangein`
  ADD PRIMARY KEY (`ExchangeInID`),
  ADD KEY `DescriptionOfMaterialIDX` (`DescriptionOfMaterial`),
  ADD KEY `ExchangeDateIDX` (`ExchangeDate`),
  ADD KEY `FK366E9E887699B003` (`CreatedByAgentID`),
  ADD KEY `FK366E9E88DC8B4810` (`AddressOfRecordID`),
  ADD KEY `FK366E9E883824C16C` (`CatalogedByID`),
  ADD KEY `FK366E9E88F77B069B` (`ReceivedFromOrganizationID`),
  ADD KEY `FK366E9E8897C961D8` (`DivisionID`),
  ADD KEY `FK366E9E885327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `exchangeinprep`
--
ALTER TABLE `exchangeinprep`
  ADD PRIMARY KEY (`ExchangeInPrepID`),
  ADD KEY `ExchgInPrepDspMemIDX` (`DisciplineID`),
  ADD KEY `FK9A0BCB57699B003` (`CreatedByAgentID`),
  ADD KEY `FK9A0BCB51E18122E` (`ExchangeInID`),
  ADD KEY `FK9A0BCB54CE675DE` (`DisciplineID`),
  ADD KEY `FK9A0BCB518627F06` (`PreparationID`),
  ADD KEY `FK9A0BCB55327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `exchangeout`
--
ALTER TABLE `exchangeout`
  ADD PRIMARY KEY (`ExchangeOutID`),
  ADD KEY `DescriptionOfMaterialIDX2` (`DescriptionOfMaterial`),
  ADD KEY `ExchangeOutdateIDX` (`ExchangeDate`),
  ADD KEY `FK97654A4B7699B003` (`CreatedByAgentID`),
  ADD KEY `FK97654A4BDC8B4810` (`AddressOfRecordID`),
  ADD KEY `FK97654A4B3824C16C` (`CatalogedByID`),
  ADD KEY `FK97654A4B97C961D8` (`DivisionID`),
  ADD KEY `FK97654A4BA21647A3` (`SentToOrganizationID`),
  ADD KEY `FK97654A4B5327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `exchangeoutprep`
--
ALTER TABLE `exchangeoutprep`
  ADD PRIMARY KEY (`ExchangeOutPrepID`),
  ADD KEY `ExchgOutPrepDspMemIDX` (`DisciplineID`),
  ADD KEY `FK7405CEF87699B003` (`CreatedByAgentID`),
  ADD KEY `FK7405CEF84CE675DE` (`DisciplineID`),
  ADD KEY `FK7405CEF818627F06` (`PreparationID`),
  ADD KEY `FK7405CEF8A542314E` (`ExchangeOutID`),
  ADD KEY `FK7405CEF85327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `exsiccata`
--
ALTER TABLE `exsiccata`
  ADD PRIMARY KEY (`ExsiccataID`),
  ADD KEY `FKACC7DD857699B003` (`CreatedByAgentID`),
  ADD KEY `FKACC7DD8569734F30` (`ReferenceWorkID`),
  ADD KEY `FKACC7DD855327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `exsiccataitem`
--
ALTER TABLE `exsiccataitem`
  ADD PRIMARY KEY (`ExsiccataItemID`),
  ADD KEY `FK23150E187699B003` (`CreatedByAgentID`),
  ADD KEY `FK23150E1875E37458` (`CollectionObjectID`),
  ADD KEY `FK23150E183B4364A2` (`ExsiccataID`),
  ADD KEY `FK23150E185327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `fieldnotebook`
--
ALTER TABLE `fieldnotebook`
  ADD PRIMARY KEY (`FieldNotebookID`),
  ADD KEY `FNBEndDateIDX` (`EndDate`),
  ADD KEY `FNBNameIDX` (`Name`),
  ADD KEY `FNBStartDateIDX` (`StartDate`),
  ADD KEY `FK4647A8D57699B003` (`CreatedByAgentID`),
  ADD KEY `FK4647A8D5384B3622` (`AgentID`),
  ADD KEY `FK4647A8D54CE675DE` (`DisciplineID`),
  ADD KEY `FK4647A8D58C2288BA` (`CollectionID`),
  ADD KEY `FK4647A8D55327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `fieldnotebookattachment`
--
ALTER TABLE `fieldnotebookattachment`
  ADD PRIMARY KEY (`FieldNotebookAttachmentId`),
  ADD KEY `FKDC15BBB8B522A4E2` (`FieldNotebookID`),
  ADD KEY `FKDC15BBB87699B003` (`CreatedByAgentID`),
  ADD KEY `FKDC15BBB8C7E55084` (`AttachmentID`),
  ADD KEY `FKDC15BBB85327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `fieldnotebookpage`
--
ALTER TABLE `fieldnotebookpage`
  ADD PRIMARY KEY (`FieldNotebookPageID`),
  ADD KEY `FNBPPageNumberIDX` (`PageNumber`),
  ADD KEY `FNBPScanDateIDX` (`ScanDate`),
  ADD KEY `FK162198E47699B003` (`CreatedByAgentID`),
  ADD KEY `FK162198E44CE675DE` (`DisciplineID`),
  ADD KEY `FK162198E49B34BD5A` (`FieldNotebookPageSetID`),
  ADD KEY `FK162198E45327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `fieldnotebookpageattachment`
--
ALTER TABLE `fieldnotebookpageattachment`
  ADD PRIMARY KEY (`FieldNotebookPageAttachmentId`),
  ADD KEY `FK91AA25077699B003` (`CreatedByAgentID`),
  ADD KEY `FK91AA250773BF3AE0` (`FieldNotebookPageID`),
  ADD KEY `FK91AA2507C7E55084` (`AttachmentID`),
  ADD KEY `FK91AA25075327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `fieldnotebookpageset`
--
ALTER TABLE `fieldnotebookpageset`
  ADD PRIMARY KEY (`FieldNotebookPageSetID`),
  ADD KEY `FNBPSStartDateIDX` (`StartDate`),
  ADD KEY `FNBPSEndDateIDX` (`EndDate`),
  ADD KEY `FK6FC0C8FE7699B003` (`CreatedByAgentID`),
  ADD KEY `FK6FC0C8FEB522A4E2` (`FieldNotebookID`),
  ADD KEY `FK6FC0C8FE384B3622` (`AgentID`),
  ADD KEY `FK6FC0C8FE4CE675DE` (`DisciplineID`),
  ADD KEY `FK6FC0C8FE5327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `fieldnotebookpagesetattachment`
--
ALTER TABLE `fieldnotebookpagesetattachment`
  ADD PRIMARY KEY (`FieldNotebookPageSetAttachmentId`),
  ADD KEY `FKB1477CA17699B003` (`CreatedByAgentID`),
  ADD KEY `FKB1477CA1C7E55084` (`AttachmentID`),
  ADD KEY `FKB1477CA19B34BD5A` (`FieldNotebookPageSetID`),
  ADD KEY `FKB1477CA15327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `fundingagent`
--
ALTER TABLE `fundingagent`
  ADD PRIMARY KEY (`FundingAgentID`),
  ADD UNIQUE KEY `AgentID` (`AgentID`,`CollectingTripID`),
  ADD KEY `COLTRIPDivIDX` (`DivisionID`),
  ADD KEY `FKB2AD6287699B003` (`CreatedByAgentID`),
  ADD KEY `FKB2AD628384B3622` (`AgentID`),
  ADD KEY `FKB2AD628697B3F98` (`CollectingTripID`),
  ADD KEY `FKB2AD62897C961D8` (`DivisionID`),
  ADD KEY `FKB2AD6285327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `geocoorddetail`
--
ALTER TABLE `geocoorddetail`
  ADD PRIMARY KEY (`GeoCoordDetailID`),
  ADD KEY `FKB688EB957699B003` (`CreatedByAgentID`),
  ADD KEY `FKB688EB95384B3622` (`AgentID`),
  ADD KEY `FKB688EB9580202F05` (`CompiledByID`),
  ADD KEY `FKB688EB95A666A5C4` (`LocalityID`),
  ADD KEY `FKB688EB955327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `geography`
--
ALTER TABLE `geography`
  ADD PRIMARY KEY (`GeographyID`),
  ADD KEY `GeoNameIDX` (`Name`),
  ADD KEY `GeoFullNameIDX` (`FullName`),
  ADD KEY `FK496A777C7699B003` (`CreatedByAgentID`),
  ADD KEY `FK496A777CE3C6E41A` (`GeographyTreeDefItemID`),
  ADD KEY `FK496A777CBF9C9714` (`GeographyTreeDefID`),
  ADD KEY `FK496A777CF484C03B` (`AcceptedID`),
  ADD KEY `FK496A777C83AAF47E` (`ParentID`),
  ADD KEY `FK496A777C5327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `geographytreedef`
--
ALTER TABLE `geographytreedef`
  ADD PRIMARY KEY (`GeographyTreeDefID`),
  ADD KEY `FKE8DD68AB7699B003` (`CreatedByAgentID`),
  ADD KEY `FKE8DD68AB5327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `geographytreedefitem`
--
ALTER TABLE `geographytreedefitem`
  ADD PRIMARY KEY (`GeographyTreeDefItemID`),
  ADD KEY `FKF584963E7699B003` (`CreatedByAgentID`),
  ADD KEY `FKF584963EBF9C9714` (`GeographyTreeDefID`),
  ADD KEY `FKF584963E5327F942` (`ModifiedByAgentID`),
  ADD KEY `FKF584963EA1F648D9` (`ParentItemID`);

--
-- Index pour la table `geologictimeperiod`
--
ALTER TABLE `geologictimeperiod`
  ADD PRIMARY KEY (`GeologicTimePeriodID`),
  ADD KEY `GTPNameIDX` (`Name`),
  ADD KEY `GTPFullNameIDX` (`FullName`),
  ADD KEY `GTPGuidIDX` (`GUID`),
  ADD KEY `FKA2A8513B7699B003` (`CreatedByAgentID`),
  ADD KEY `FKA2A8513B9988ED70` (`GeologicTimePeriodTreeDefID`),
  ADD KEY `FKA2A8513BA8A8AC76` (`GeologicTimePeriodTreeDefItemID`),
  ADD KEY `FKA2A8513B523E3360` (`AcceptedID`),
  ADD KEY `FKA2A8513BE16467A3` (`ParentID`),
  ADD KEY `FKA2A8513B5327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `geologictimeperiodtreedef`
--
ALTER TABLE `geologictimeperiodtreedef`
  ADD PRIMARY KEY (`GeologicTimePeriodTreeDefID`),
  ADD KEY `FK8109EA0C7699B003` (`CreatedByAgentID`),
  ADD KEY `FK8109EA0C5327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `geologictimeperiodtreedefitem`
--
ALTER TABLE `geologictimeperiodtreedefitem`
  ADD PRIMARY KEY (`GeologicTimePeriodTreeDefItemID`),
  ADD KEY `FKB6DF7F1F7699B003` (`CreatedByAgentID`),
  ADD KEY `FKB6DF7F1F9988ED70` (`GeologicTimePeriodTreeDefID`),
  ADD KEY `FKB6DF7F1F5327F942` (`ModifiedByAgentID`),
  ADD KEY `FKB6DF7F1F9093DC94` (`ParentItemID`);

--
-- Index pour la table `gift`
--
ALTER TABLE `gift`
  ADD PRIMARY KEY (`GiftID`),
  ADD KEY `GiftDateIDX` (`GiftDate`),
  ADD KEY `GiftNumberIDX` (`GiftNumber`),
  ADD KEY `FK3069307699B003` (`CreatedByAgentID`),
  ADD KEY `FK306930DC8B4810` (`AddressOfRecordID`),
  ADD KEY `FK3069304CE675DE` (`DisciplineID`),
  ADD KEY `FK30693097C961D8` (`DivisionID`),
  ADD KEY `FK3069305327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `giftagent`
--
ALTER TABLE `giftagent`
  ADD PRIMARY KEY (`GiftAgentID`),
  ADD UNIQUE KEY `Role` (`Role`,`GiftID`,`AgentID`),
  ADD KEY `GiftAgDspMemIDX` (`DisciplineID`),
  ADD KEY `FK221917D57699B003` (`CreatedByAgentID`),
  ADD KEY `FK221917D59890879E` (`GiftID`),
  ADD KEY `FK221917D5384B3622` (`AgentID`),
  ADD KEY `FK221917D54CE675DE` (`DisciplineID`),
  ADD KEY `FK221917D55327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `giftattachment`
--
ALTER TABLE `giftattachment`
  ADD PRIMARY KEY (`GiftAttachmentID`),
  ADD KEY `FKC75A06537699B003` (`CreatedByAgentID`),
  ADD KEY `FKC75A06539890879E` (`GiftID`),
  ADD KEY `FKC75A0653C7E55084` (`AttachmentID`),
  ADD KEY `FKC75A06535327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `giftpreparation`
--
ALTER TABLE `giftpreparation`
  ADD PRIMARY KEY (`GiftPreparationID`),
  ADD KEY `GiftPrepDspMemIDX` (`DisciplineID`),
  ADD KEY `FK18B1F677699B003` (`CreatedByAgentID`),
  ADD KEY `FK18B1F679890879E` (`GiftID`),
  ADD KEY `FK18B1F674CE675DE` (`DisciplineID`),
  ADD KEY `FK18B1F6718627F06` (`PreparationID`),
  ADD KEY `FK18B1F675327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `groupperson`
--
ALTER TABLE `groupperson`
  ADD PRIMARY KEY (`GroupPersonID`),
  ADD UNIQUE KEY `OrderNumber` (`OrderNumber`,`GroupID`),
  ADD KEY `FK5DEB76947699B003` (`CreatedByAgentID`),
  ADD KEY `FK5DEB76948905F31C` (`GroupID`),
  ADD KEY `FK5DEB769497C961D8` (`DivisionID`),
  ADD KEY `FK5DEB76945327F942` (`ModifiedByAgentID`),
  ADD KEY `FK5DEB769450D2EC77` (`MemberID`);

--
-- Index pour la table `inforequest`
--
ALTER TABLE `inforequest`
  ADD PRIMARY KEY (`InfoRequestID`),
  ADD KEY `IRColMemIDX` (`CollectionMemberID`),
  ADD KEY `FK68918E217699B003` (`CreatedByAgentID`),
  ADD KEY `FK68918E21384B3622` (`AgentID`),
  ADD KEY `FK68918E215327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `institution`
--
ALTER TABLE `institution`
  ADD PRIMARY KEY (`UserGroupScopeId`),
  ADD KEY `InstNameIDX` (`Name`),
  ADD KEY `InstGuidIDX` (`GUID`),
  ADD KEY `FK3D0021607699B0033529a5b8` (`CreatedByAgentID`),
  ADD KEY `FK3529A5B853C7EFD6` (`StorageTreeDefID`),
  ADD KEY `FK3529A5B8E6A64D00` (`AddressID`),
  ADD KEY `FK3D0021605327F9423529a5b8` (`ModifiedByAgentID`);

--
-- Index pour la table `institutionnetwork`
--
ALTER TABLE `institutionnetwork`
  ADD PRIMARY KEY (`InstitutionNetworkID`),
  ADD KEY `InstNetworkNameIDX` (`Name`),
  ADD KEY `FK945C55767699B003` (`CreatedByAgentID`),
  ADD KEY `FK945C5576E6A64D00` (`AddressID`),
  ADD KEY `FK945C55765327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `journal`
--
ALTER TABLE `journal`
  ADD PRIMARY KEY (`JournalID`),
  ADD KEY `JournalNameIDX` (`JournalName`),
  ADD KEY `JournalGUIDIDX` (`GUID`),
  ADD KEY `FKAB64AF377699B003` (`CreatedByAgentID`),
  ADD KEY `FKAB64AF3781223908` (`InstitutionID`),
  ADD KEY `FKAB64AF375327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `latlonpolygon`
--
ALTER TABLE `latlonpolygon`
  ADD PRIMARY KEY (`LatLonPolygonID`),
  ADD KEY `FKE4EEDE6E7699B003` (`CreatedByAgentID`),
  ADD KEY `FKE4EEDE6E2583AF6E` (`SpVisualQueryID`),
  ADD KEY `FKE4EEDE6EA666A5C4` (`LocalityID`),
  ADD KEY `FKE4EEDE6E5327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `latlonpolygonpnt`
--
ALTER TABLE `latlonpolygonpnt`
  ADD PRIMARY KEY (`LatLonPolygonPntID`),
  ADD KEY `FK31701508BBAA1DB4` (`LatLonPolygonID`);

--
-- Index pour la table `lithostrat`
--
ALTER TABLE `lithostrat`
  ADD PRIMARY KEY (`LithoStratID`),
  ADD KEY `LithoNameIDX` (`Name`),
  ADD KEY `LithoFullNameIDX` (`FullName`),
  ADD KEY `LithoGuidIDX` (`GUID`),
  ADD KEY `FK329297067699B003` (`CreatedByAgentID`),
  ADD KEY `FK329297067A1D53CB` (`AcceptedID`),
  ADD KEY `FK3292970699E26740` (`LithoStratTreeDefItemID`),
  ADD KEY `FK3292970672939D3A` (`LithoStratTreeDefID`),
  ADD KEY `FK32929706943880E` (`ParentID`),
  ADD KEY `FK329297065327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `lithostrattreedef`
--
ALTER TABLE `lithostrattreedef`
  ADD PRIMARY KEY (`LithoStratTreeDefID`),
  ADD KEY `FK268699E17699B003` (`CreatedByAgentID`),
  ADD KEY `FK268699E15327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `lithostrattreedefitem`
--
ALTER TABLE `lithostrattreedefitem`
  ADD PRIMARY KEY (`LithoStratTreeDefItemID`),
  ADD KEY `FKEC263C747699B003` (`CreatedByAgentID`),
  ADD KEY `FKEC263C7472939D3A` (`LithoStratTreeDefID`),
  ADD KEY `FKEC263C748340DB49` (`ParentItemID`),
  ADD KEY `FKEC263C745327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `loan`
--
ALTER TABLE `loan`
  ADD PRIMARY KEY (`LoanID`),
  ADD KEY `LoanDateIDX` (`LoanDate`),
  ADD KEY `LoanNumberIDX` (`LoanNumber`),
  ADD KEY `CurrentDueDateIDX` (`CurrentDueDate`),
  ADD KEY `FK32C4F07699B003` (`CreatedByAgentID`),
  ADD KEY `FK32C4F0DC8B4810` (`AddressOfRecordID`),
  ADD KEY `FK32C4F04CE675DE` (`DisciplineID`),
  ADD KEY `FK32C4F097C961D8` (`DivisionID`),
  ADD KEY `FK32C4F05327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `loanagent`
--
ALTER TABLE `loanagent`
  ADD PRIMARY KEY (`LoanAgentID`),
  ADD UNIQUE KEY `Role` (`Role`,`LoanID`,`AgentID`),
  ADD KEY `LoanAgDspMemIDX` (`DisciplineID`),
  ADD KEY `FK63FA14157699B003` (`CreatedByAgentID`),
  ADD KEY `FK63FA1415384B3622` (`AgentID`),
  ADD KEY `FK63FA14154CE675DE` (`DisciplineID`),
  ADD KEY `FK63FA1415A16D4F1E` (`LoanID`),
  ADD KEY `FK63FA14155327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `loanattachment`
--
ALTER TABLE `loanattachment`
  ADD PRIMARY KEY (`LoanAttachmentID`),
  ADD KEY `FK23ECB2137699B003` (`CreatedByAgentID`),
  ADD KEY `FK23ECB213C7E55084` (`AttachmentID`),
  ADD KEY `FK23ECB213A16D4F1E` (`LoanID`),
  ADD KEY `FK23ECB2135327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `loanpreparation`
--
ALTER TABLE `loanpreparation`
  ADD PRIMARY KEY (`LoanPreparationID`),
  ADD KEY `LoanPrepDspMemIDX` (`DisciplineID`),
  ADD KEY `FK374DEBA77699B003` (`CreatedByAgentID`),
  ADD KEY `FK374DEBA74CE675DE` (`DisciplineID`),
  ADD KEY `FK374DEBA718627F06` (`PreparationID`),
  ADD KEY `FK374DEBA7A16D4F1E` (`LoanID`),
  ADD KEY `FK374DEBA75327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `loanreturnpreparation`
--
ALTER TABLE `loanreturnpreparation`
  ADD PRIMARY KEY (`LoanReturnPreparationID`),
  ADD KEY `LoanReturnedDateIDX` (`ReturnedDate`),
  ADD KEY `LoanRetPrepDspMemIDX` (`DisciplineID`),
  ADD KEY `FK363284777699B003` (`CreatedByAgentID`),
  ADD KEY `FK36328477CD552686` (`LoanPreparationID`),
  ADD KEY `FK3632847749C90455` (`ReceivedByID`),
  ADD KEY `FK363284774CE675DE` (`DisciplineID`),
  ADD KEY `FK36328477EF0E7D46` (`DeaccessionPreparationID`),
  ADD KEY `FK363284775327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `locality`
--
ALTER TABLE `locality`
  ADD PRIMARY KEY (`LocalityID`),
  ADD KEY `LocalityDisciplineIDX` (`DisciplineID`),
  ADD KEY `localityNameIDX` (`LocalityName`),
  ADD KEY `RelationToNamedPlaceIDX` (`RelationToNamedPlace`),
  ADD KEY `NamedPlaceIDX` (`NamedPlace`),
  ADD KEY `FK714BFD637699B003` (`CreatedByAgentID`),
  ADD KEY `FK714BFD637BF1F70B` (`VisibilitySetByID`),
  ADD KEY `FK714BFD6397ECD2B2` (`PaleoContextID`),
  ADD KEY `FK714BFD634CE675DE` (`DisciplineID`),
  ADD KEY `FK714BFD63D649F6D0` (`GeographyID`),
  ADD KEY `FK714BFD635327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `localityattachment`
--
ALTER TABLE `localityattachment`
  ADD PRIMARY KEY (`LocalityAttachmentID`),
  ADD KEY `FKB39C36C67699B003` (`CreatedByAgentID`),
  ADD KEY `FKB39C36C6C7E55084` (`AttachmentID`),
  ADD KEY `FKB39C36C6A666A5C4` (`LocalityID`),
  ADD KEY `FKB39C36C65327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `localitycitation`
--
ALTER TABLE `localitycitation`
  ADD PRIMARY KEY (`LocalityCitationID`),
  ADD UNIQUE KEY `ReferenceWorkID` (`ReferenceWorkID`,`LocalityID`),
  ADD KEY `LocCitDspMemIDX` (`DisciplineID`),
  ADD KEY `FK9877F54A7699B003` (`CreatedByAgentID`),
  ADD KEY `FK9877F54A69734F30` (`ReferenceWorkID`),
  ADD KEY `FK9877F54A4CE675DE` (`DisciplineID`),
  ADD KEY `FK9877F54AA666A5C4` (`LocalityID`),
  ADD KEY `FK9877F54A5327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `localitydetail`
--
ALTER TABLE `localitydetail`
  ADD PRIMARY KEY (`LocalityDetailID`),
  ADD KEY `FKBB0D3F747699B003` (`CreatedByAgentID`),
  ADD KEY `FKBB0D3F74A666A5C4` (`LocalityID`),
  ADD KEY `FKBB0D3F745327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `localitynamealias`
--
ALTER TABLE `localitynamealias`
  ADD PRIMARY KEY (`LocalityNameAliasID`),
  ADD KEY `LocalityNameAliasIDX` (`Name`),
  ADD KEY `FK29EB5CA27699B003` (`CreatedByAgentID`),
  ADD KEY `FK29EB5CA24CE675DE` (`DisciplineID`),
  ADD KEY `FK29EB5CA2A666A5C4` (`LocalityID`),
  ADD KEY `FK29EB5CA25327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `materialsample`
--
ALTER TABLE `materialsample`
  ADD PRIMARY KEY (`MaterialSampleID`),
  ADD KEY `DesignationIDX` (`GGBNSampleDesignation`),
  ADD KEY `FKD5CE21917699B003` (`CreatedByAgentID`),
  ADD KEY `FKD5CE219118627F06` (`PreparationID`),
  ADD KEY `FKD5CE21915327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `morphbankview`
--
ALTER TABLE `morphbankview`
  ADD PRIMARY KEY (`MorphBankViewID`),
  ADD KEY `FKDED66BE97699B003` (`CreatedByAgentID`),
  ADD KEY `FKDED66BE95327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `otheridentifier`
--
ALTER TABLE `otheridentifier`
  ADD PRIMARY KEY (`OtherIdentifierID`),
  ADD KEY `OthIdColMemIDX` (`CollectionMemberID`),
  ADD KEY `FK2A5397B97699B003` (`CreatedByAgentID`),
  ADD KEY `FK2A5397B975E37458` (`CollectionObjectID`),
  ADD KEY `FK2A5397B95327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `paleocontext`
--
ALTER TABLE `paleocontext`
  ADD PRIMARY KEY (`PaleoContextID`),
  ADD KEY `PaleoCxtNameIDX` (`PaleoContextName`),
  ADD KEY `PaleoCxtDisciplineIDX` (`DisciplineID`),
  ADD KEY `FK99B5438A7699B003` (`CreatedByAgentID`),
  ADD KEY `FK99B5438A89FD3495` (`BioStratID`),
  ADD KEY `FK99B5438A50D2926D` (`ChronosStratID`),
  ADD KEY `FK99B5438A1D72DA20` (`ChronosStratEndID`),
  ADD KEY `FK99B5438A9B80EF6A` (`LithoStratID`),
  ADD KEY `FK99B5438A4CE675DE` (`DisciplineID`),
  ADD KEY `FK99B5438A5327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `permit`
--
ALTER TABLE `permit`
  ADD PRIMARY KEY (`PermitID`),
  ADD KEY `PermitNumberIDX` (`PermitNumber`),
  ADD KEY `IssuedDateIDX` (`IssuedDate`),
  ADD KEY `FKC4E3841B7699B003` (`CreatedByAgentID`),
  ADD KEY `FKC4E3841B81223908` (`InstitutionID`),
  ADD KEY `FKC4E3841BCDCF181F` (`IssuedByID`),
  ADD KEY `FKC4E3841B5327F942` (`ModifiedByAgentID`),
  ADD KEY `FKC4E3841BCDD72143` (`IssuedToID`);

--
-- Index pour la table `permitattachment`
--
ALTER TABLE `permitattachment`
  ADD PRIMARY KEY (`PermitAttachmentID`),
  ADD KEY `FK7064B77E7699B003` (`CreatedByAgentID`),
  ADD KEY `FK7064B77EAD1F31F4` (`PermitID`),
  ADD KEY `FK7064B77EC7E55084` (`AttachmentID`),
  ADD KEY `FK7064B77E5327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `picklist`
--
ALTER TABLE `picklist`
  ADD PRIMARY KEY (`PickListID`),
  ADD KEY `PickListNameIDX` (`Name`),
  ADD KEY `FKD3F8383F7699B003` (`CreatedByAgentID`),
  ADD KEY `FKD3F8383F8C2288BA` (`CollectionID`),
  ADD KEY `FKD3F8383F5327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `picklistitem`
--
ALTER TABLE `picklistitem`
  ADD PRIMARY KEY (`PickListItemID`),
  ADD KEY `FK30C57BD27699B003` (`CreatedByAgentID`),
  ADD KEY `FK30C57BD2718D489C` (`PickListID`),
  ADD KEY `FK30C57BD25327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `preparation`
--
ALTER TABLE `preparation`
  ADD PRIMARY KEY (`PreparationID`),
  ADD KEY `PrepGuidIDX` (`GUID`),
  ADD KEY `PrepColMemIDX` (`CollectionMemberID`),
  ADD KEY `PreparedDateIDX` (`PreparedDate`),
  ADD KEY `FKB19826977699B003` (`CreatedByAgentID`),
  ADD KEY `FKB198269775E37458` (`CollectionObjectID`),
  ADD KEY `FKB198269745F8D1A8` (`PreparationAttributeID`),
  ADD KEY `FKB1982697FEE420B1` (`PreparedByID`),
  ADD KEY `FKB19826976E8973EC` (`PrepTypeID`),
  ADD KEY `FKB1982697EB48144E` (`StorageID`),
  ADD KEY `FKB19826975327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `preparationattachment`
--
ALTER TABLE `preparationattachment`
  ADD PRIMARY KEY (`PreparationAttachmentID`),
  ADD KEY `PrepAttColMemIDX` (`CollectionMemberID`),
  ADD KEY `FKE3FD6EFA7699B003` (`CreatedByAgentID`),
  ADD KEY `FKE3FD6EFA18627F06` (`PreparationID`),
  ADD KEY `FKE3FD6EFAC7E55084` (`AttachmentID`),
  ADD KEY `FKE3FD6EFA5327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `preparationattr`
--
ALTER TABLE `preparationattr`
  ADD PRIMARY KEY (`AttrID`),
  ADD KEY `PrepAttrColMemIDX` (`CollectionMemberID`),
  ADD KEY `FK4592DD087699B003` (`CreatedByAgentID`),
  ADD KEY `FK4592DD08E84BA7B0` (`AttributeDefID`),
  ADD KEY `FK4592DD0818627F06` (`PreparationId`),
  ADD KEY `FK4592DD085327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `preparationattribute`
--
ALTER TABLE `preparationattribute`
  ADD PRIMARY KEY (`PreparationAttributeID`),
  ADD KEY `PrepAttrsColMemIDX` (`CollectionMemberID`),
  ADD KEY `FK984BFDE57699B003` (`CreatedByAgentID`),
  ADD KEY `FK984BFDE55327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `preptype`
--
ALTER TABLE `preptype`
  ADD PRIMARY KEY (`PrepTypeID`),
  ADD KEY `FKB3C452E77699B003` (`CreatedByAgentID`),
  ADD KEY `FKB3C452E78C2288BA` (`CollectionID`),
  ADD KEY `FKB3C452E75327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`ProjectID`),
  ADD KEY `ProjectNumberIDX` (`ProjectNumber`),
  ADD KEY `ProjectNameIDX` (`ProjectName`),
  ADD KEY `FKED904B197699B003` (`CreatedByAgentID`),
  ADD KEY `FKED904B195DDECE9` (`ProjectAgentID`),
  ADD KEY `FKED904B195327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `project_colobj`
--
ALTER TABLE `project_colobj`
  ADD PRIMARY KEY (`ProjectID`,`CollectionObjectID`),
  ADD KEY `FK1E416F5D75E37458` (`CollectionObjectID`),
  ADD KEY `FK1E416F5DAF28760A` (`ProjectID`);

--
-- Index pour la table `recordset`
--
ALTER TABLE `recordset`
  ADD PRIMARY KEY (`RecordSetID`),
  ADD KEY `RecordSetNameIDX` (`Name`),
  ADD KEY `FK3B38A2717699B003` (`CreatedByAgentID`),
  ADD KEY `FK3B38A27110D22B7A` (`InfoRequestID`),
  ADD KEY `FK3B38A2714BDD9E10` (`SpecifyUserID`),
  ADD KEY `FK3B38A27199A7381A` (`SpPrincipalID`),
  ADD KEY `FK3B38A2715327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `recordsetitem`
--
ALTER TABLE `recordsetitem`
  ADD PRIMARY KEY (`RecordSetItemID`),
  ADD KEY `FKD0817D047F06EB5A` (`RecordSetID`);

--
-- Index pour la table `referencework`
--
ALTER TABLE `referencework`
  ADD PRIMARY KEY (`ReferenceWorkID`),
  ADD KEY `RefWrkPublisherIDX` (`Publisher`),
  ADD KEY `RefWrkGuidIDX` (`GUID`),
  ADD KEY `ISBNIDX` (`ISBN`),
  ADD KEY `RefWrkTitleIDX` (`Title`),
  ADD KEY `FK5F7C68DC7699B003` (`CreatedByAgentID`),
  ADD KEY `FK5F7C68DC81223908` (`InstitutionID`),
  ADD KEY `FK5F7C68DC748AEC6` (`JournalID`),
  ADD KEY `FK5F7C68DC1B806665` (`ContainedRFParentID`),
  ADD KEY `FK5F7C68DC5327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `referenceworkattachment`
--
ALTER TABLE `referenceworkattachment`
  ADD PRIMARY KEY (`ReferenceWorkAttachmentID`),
  ADD KEY `FK9C9B5EFF7699B003` (`CreatedByAgentID`),
  ADD KEY `FK9C9B5EFF69734F30` (`ReferenceWorkID`),
  ADD KEY `FK9C9B5EFFC7E55084` (`AttachmentID`),
  ADD KEY `FK9C9B5EFF5327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `repositoryagreement`
--
ALTER TABLE `repositoryagreement`
  ADD PRIMARY KEY (`RepositoryAgreementID`),
  ADD KEY `RefWrkStartDate` (`StartDate`),
  ADD KEY `RefWrkNumberIDX` (`RepositoryAgreementNumber`),
  ADD KEY `FKA5A38A007699B003` (`CreatedByAgentID`),
  ADD KEY `FKA5A38A00384B3622` (`AgentID`),
  ADD KEY `FKA5A38A00DC8B4810` (`AddressOfRecordID`),
  ADD KEY `FKA5A38A0097C961D8` (`DivisionID`),
  ADD KEY `FKA5A38A005327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `repositoryagreementattachment`
--
ALTER TABLE `repositoryagreementattachment`
  ADD PRIMARY KEY (`RepositoryAgreementAttachmentID`),
  ADD KEY `FK93663237699B003` (`CreatedByAgentID`),
  ADD KEY `FK93663233EBC6278` (`RepositoryAgreementID`),
  ADD KEY `FK9366323C7E55084` (`AttachmentID`),
  ADD KEY `FK93663235327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `sgrbatchmatchresultitem`
--
ALTER TABLE `sgrbatchmatchresultitem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sgrbatchmatchresultitemfk1` (`batchMatchResultSetId`);

--
-- Index pour la table `sgrbatchmatchresultset`
--
ALTER TABLE `sgrbatchmatchresultset`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sgrbatchmatchresultsetfk2` (`matchConfigurationId`);

--
-- Index pour la table `sgrmatchconfiguration`
--
ALTER TABLE `sgrmatchconfiguration`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `shipment`
--
ALTER TABLE `shipment`
  ADD PRIMARY KEY (`ShipmentID`),
  ADD KEY `ShipmentDspMemIDX` (`DisciplineID`),
  ADD KEY `ShipmentDateIDX` (`ShipmentDate`),
  ADD KEY `ShipmentNumberIDX` (`ShipmentNumber`),
  ADD KEY `ShipmentMethodIDX` (`ShipmentMethod`),
  ADD KEY `FKE139719A7699B003` (`CreatedByAgentID`),
  ADD KEY `FKE139719A9890879E` (`GiftID`),
  ADD KEY `FKE139719ABDA7A97E` (`ShipperID`),
  ADD KEY `FKE139719A4CE675DE` (`DisciplineID`),
  ADD KEY `FKE139719AF8BF6F28` (`BorrowID`),
  ADD KEY `FKE139719AB17AF7EB` (`ShippedToID`),
  ADD KEY `FKE139719AA542314E` (`ExchangeOutID`),
  ADD KEY `FKE139719AA16D4F1E` (`LoanID`),
  ADD KEY `FKE139719AB172EEC7` (`ShippedByID`),
  ADD KEY `FKE139719A5327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `spappresource`
--
ALTER TABLE `spappresource`
  ADD PRIMARY KEY (`SpAppResourceID`),
  ADD KEY `SpAppResNameIDX` (`Name`),
  ADD KEY `SpAppResMimeTypeIDX` (`MimeType`),
  ADD KEY `FK96F9D2B27699B003` (`CreatedByAgentID`),
  ADD KEY `FK96F9D2B24BDD9E10` (`SpecifyUserID`),
  ADD KEY `FK96F9D2B299A7381A` (`SpPrincipalID`),
  ADD KEY `FK96F9D2B21A0B1F14` (`SpAppResourceDirID`),
  ADD KEY `FK96F9D2B25327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `spappresourcedata`
--
ALTER TABLE `spappresourcedata`
  ADD PRIMARY KEY (`SpAppResourceDataID`),
  ADD KEY `FKBBC195C7699B003` (`CreatedByAgentID`),
  ADD KEY `FKBBC195C560D9D3C` (`SpAppResourceID`),
  ADD KEY `FKBBC195C490F514C` (`SpViewSetObjID`),
  ADD KEY `FKBBC195C5327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `spappresourcedir`
--
ALTER TABLE `spappresourcedir`
  ADD PRIMARY KEY (`SpAppResourceDirID`),
  ADD KEY `SpAppResourceDirDispTypeIDX` (`DisciplineType`),
  ADD KEY `FK3A2F5C9B7699B003` (`CreatedByAgentID`),
  ADD KEY `FK3A2F5C9B4CE675DE` (`DisciplineID`),
  ADD KEY `FK3A2F5C9B4BDD9E10` (`SpecifyUserID`),
  ADD KEY `FK3A2F5C9B8C2288BA` (`CollectionID`),
  ADD KEY `FK3A2F5C9B5327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `spauditlog`
--
ALTER TABLE `spauditlog`
  ADD PRIMARY KEY (`SpAuditLogID`),
  ADD KEY `FKD51C16E67699B003` (`CreatedByAgentID`),
  ADD KEY `FKD51C16E65327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `spauditlogfield`
--
ALTER TABLE `spauditlogfield`
  ADD PRIMARY KEY (`SpAuditLogFieldID`),
  ADD KEY `FK154AE9D47699B003` (`CreatedByAgentID`),
  ADD KEY `FK154AE9D469D0534A` (`SpAuditLogID`),
  ADD KEY `FK154AE9D45327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `specifyuser`
--
ALTER TABLE `specifyuser`
  ADD PRIMARY KEY (`SpecifyUserID`),
  ADD UNIQUE KEY `Name` (`Name`),
  ADD KEY `FKD54E94AC7699B003` (`CreatedByAgentID`),
  ADD KEY `FKD54E94AC5327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `specifyuser_spprincipal`
--
ALTER TABLE `specifyuser_spprincipal`
  ADD PRIMARY KEY (`SpecifyUserID`,`SpPrincipalID`),
  ADD KEY `FK81E18B5E99A7381A` (`SpPrincipalID`),
  ADD KEY `FK81E18B5E4BDD9E10` (`SpecifyUserID`);

--
-- Index pour la table `spexportschema`
--
ALTER TABLE `spexportschema`
  ADD PRIMARY KEY (`SpExportSchemaID`),
  ADD KEY `FKD2861D327699B003` (`CreatedByAgentID`),
  ADD KEY `FKD2861D324CE675DE` (`DisciplineID`),
  ADD KEY `FKD2861D325327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `spexportschemaitem`
--
ALTER TABLE `spexportschemaitem`
  ADD PRIMARY KEY (`SpExportSchemaItemID`),
  ADD KEY `FKBB21AF45720CCEF2` (`SpLocaleContainerItemID`),
  ADD KEY `FKBB21AF457699B003` (`CreatedByAgentID`),
  ADD KEY `FKBB21AF455722A7A2` (`SpExportSchemaID`),
  ADD KEY `FKBB21AF455327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `spexportschemaitemmapping`
--
ALTER TABLE `spexportschemaitemmapping`
  ADD PRIMARY KEY (`SpExportSchemaItemMappingID`),
  ADD KEY `FKCD08A1E97699B003` (`CreatedByAgentID`),
  ADD KEY `FKCD08A1E92D3E491C` (`SpQueryFieldID`),
  ADD KEY `FKCD08A1E92957EC8B` (`ExportSchemaItemID`),
  ADD KEY `FKCD08A1E9F7C8AAB0` (`SpExportSchemaMappingID`),
  ADD KEY `FKCD08A1E95327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `spexportschemamapping`
--
ALTER TABLE `spexportschemamapping`
  ADD PRIMARY KEY (`SpExportSchemaMappingID`),
  ADD KEY `SPEXPSCHMMAPColMemIDX` (`CollectionMemberID`),
  ADD KEY `FK68B61F5C7699B003` (`CreatedByAgentID`),
  ADD KEY `FK68B61F5C5327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `spfieldvaluedefault`
--
ALTER TABLE `spfieldvaluedefault`
  ADD PRIMARY KEY (`SpFieldValueDefaultID`),
  ADD KEY `SpFieldValueDefaultColMemIDX` (`CollectionMemberID`),
  ADD KEY `FK14E6C4ED7699B003` (`CreatedByAgentID`),
  ADD KEY `FK14E6C4ED5327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `splocalecontainer`
--
ALTER TABLE `splocalecontainer`
  ADD PRIMARY KEY (`SpLocaleContainerID`),
  ADD KEY `SpLocaleContainerNameIDX` (`Name`),
  ADD KEY `FK3CC8F6A7699B003` (`CreatedByAgentID`),
  ADD KEY `FK3CC8F6A4CE675DE` (`DisciplineID`),
  ADD KEY `FK3CC8F6A5327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `splocalecontaineritem`
--
ALTER TABLE `splocalecontaineritem`
  ADD PRIMARY KEY (`SpLocaleContainerItemID`),
  ADD KEY `SpLocaleContainerItemNameIDX` (`Name`),
  ADD KEY `FK22F4457D7699B003` (`CreatedByAgentID`),
  ADD KEY `FK22F4457DC279ADEC` (`SpLocaleContainerID`),
  ADD KEY `FK22F4457D5327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `splocaleitemstr`
--
ALTER TABLE `splocaleitemstr`
  ADD PRIMARY KEY (`SpLocaleItemStrID`),
  ADD KEY `SpLocaleCountyIDX` (`Country`),
  ADD KEY `SpLocaleLanguageIDX` (`Language`),
  ADD KEY `FK4F03EF677699B003` (`CreatedByAgentID`),
  ADD KEY `FK4F03EF67FAAA6C3D` (`SpLocaleContainerItemNameID`),
  ADD KEY `FK4F03EF67AD36C73D` (`SpLocaleContainerDescID`),
  ADD KEY `FK4F03EF67BE0C2CB7` (`SpLocaleContainerNameID`),
  ADD KEY `FK4F03EF67E9D506C3` (`SpLocaleContainerItemDescID`),
  ADD KEY `FK4F03EF675327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `sppermission`
--
ALTER TABLE `sppermission`
  ADD PRIMARY KEY (`SpPermissionID`);

--
-- Index pour la table `spprincipal`
--
ALTER TABLE `spprincipal`
  ADD PRIMARY KEY (`SpPrincipalID`),
  ADD KEY `FK56DC3A717699B003` (`CreatedByAgentID`),
  ADD KEY `FK56DC3A715327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `spprincipal_sppermission`
--
ALTER TABLE `spprincipal_sppermission`
  ADD PRIMARY KEY (`SpPermissionID`,`SpPrincipalID`),
  ADD KEY `FK9DD8B2FA891F8736` (`SpPermissionID`),
  ADD KEY `FK9DD8B2FA99A7381A` (`SpPrincipalID`);

--
-- Index pour la table `spquery`
--
ALTER TABLE `spquery`
  ADD PRIMARY KEY (`SpQueryID`),
  ADD KEY `SpQueryNameIDX` (`Name`),
  ADD KEY `FK88FA7C8B7699B003` (`CreatedByAgentID`),
  ADD KEY `FK88FA7C8B4BDD9E10` (`SpecifyUserID`),
  ADD KEY `FK88FA7C8B5327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `spqueryfield`
--
ALTER TABLE `spqueryfield`
  ADD PRIMARY KEY (`SpQueryFieldID`),
  ADD KEY `FK8F33434F7699B003` (`CreatedByAgentID`),
  ADD KEY `FK8F33434FB273544E` (`SpQueryID`),
  ADD KEY `FK8F33434F5327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `spreport`
--
ALTER TABLE `spreport`
  ADD PRIMARY KEY (`SpReportId`),
  ADD KEY `SpReportNameIDX` (`Name`),
  ADD KEY `FK972D69D17699B003` (`CreatedByAgentID`),
  ADD KEY `FK972D69D17F5EBA2A` (`WorkbenchTemplateID`),
  ADD KEY `FK972D69D14BDD9E10` (`SpecifyUserID`),
  ADD KEY `FK972D69D1B273544E` (`SpQueryID`),
  ADD KEY `FK972D69D12774AC79` (`AppResourceID`),
  ADD KEY `FK972D69D15327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `spsymbiotainstance`
--
ALTER TABLE `spsymbiotainstance`
  ADD PRIMARY KEY (`SpSymbiotaInstanceID`),
  ADD KEY `SPSYMINSTColMemIDX` (`CollectionMemberID`),
  ADD KEY `FK95FF2A007699B003` (`CreatedByAgentID`),
  ADD KEY `FK95FF2A00E5409F21` (`SchemaMappingID`),
  ADD KEY `FK95FF2A005327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `sptasksemaphore`
--
ALTER TABLE `sptasksemaphore`
  ADD PRIMARY KEY (`TaskSemaphoreID`),
  ADD KEY `FKF2333F227699B003` (`CreatedByAgentID`),
  ADD KEY `FKF2333F224CE675DE` (`DisciplineID`),
  ADD KEY `FKF2333F2251039657` (`OwnerID`),
  ADD KEY `FKF2333F228C2288BA` (`CollectionID`),
  ADD KEY `FKF2333F225327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `spversion`
--
ALTER TABLE `spversion`
  ADD PRIMARY KEY (`SpVersionID`),
  ADD KEY `FK22369BDB7699B003` (`CreatedByAgentID`),
  ADD KEY `FK22369BDB5327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `spviewsetobj`
--
ALTER TABLE `spviewsetobj`
  ADD PRIMARY KEY (`SpViewSetObjID`),
  ADD KEY `SpViewObjNameIDX` (`Name`),
  ADD KEY `FK5FA666577699B003` (`CreatedByAgentID`),
  ADD KEY `FK5FA666571A0B1F14` (`SpAppResourceDirID`),
  ADD KEY `FK5FA666575327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `spvisualquery`
--
ALTER TABLE `spvisualquery`
  ADD PRIMARY KEY (`SpVisualQueryID`),
  ADD KEY `SpVisualQueryNameIDX` (`Name`),
  ADD KEY `FK34BC5F0B7699B003` (`CreatedByAgentID`),
  ADD KEY `FK34BC5F0B4BDD9E10` (`SpecifyUserID`),
  ADD KEY `FK34BC5F0B5327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `sp_schema_mapping`
--
ALTER TABLE `sp_schema_mapping`
  ADD PRIMARY KEY (`SpExportSchemaMappingID`,`SpExportSchemaID`),
  ADD KEY `FKC5EDFE52F7C8AAB0` (`SpExportSchemaMappingID`),
  ADD KEY `FKC5EDFE525722A7A2` (`SpExportSchemaID`);

--
-- Index pour la table `storage`
--
ALTER TABLE `storage`
  ADD PRIMARY KEY (`StorageID`),
  ADD KEY `StorNameIDX` (`Name`),
  ADD KEY `StorFullNameIDX` (`FullName`),
  ADD KEY `FK8FB0427B7699B003` (`CreatedByAgentID`),
  ADD KEY `FK8FB0427B3D83D67A` (`AcceptedID`),
  ADD KEY `FK8FB0427B53C7EFD6` (`StorageTreeDefID`),
  ADD KEY `FK8FB0427B4D340BDC` (`StorageTreeDefItemID`),
  ADD KEY `FK8FB0427BCCAA0ABD` (`ParentID`),
  ADD KEY `FK8FB0427B5327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `storageattachment`
--
ALTER TABLE `storageattachment`
  ADD PRIMARY KEY (`StorageAttachmentID`),
  ADD KEY `FKBE9EFDDE7699B003` (`CreatedByAgentID`),
  ADD KEY `FKBE9EFDDEC7E55084` (`AttachmentID`),
  ADD KEY `FKBE9EFDDE5327F942` (`ModifiedByAgentID`),
  ADD KEY `FKBE9EFDDEEB48144E` (`StorageID`);

--
-- Index pour la table `storagetreedef`
--
ALTER TABLE `storagetreedef`
  ADD PRIMARY KEY (`StorageTreeDefID`),
  ADD KEY `FK21AC10CC7699B003` (`CreatedByAgentID`),
  ADD KEY `FK21AC10CC5327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `storagetreedefitem`
--
ALTER TABLE `storagetreedefitem`
  ADD PRIMARY KEY (`StorageTreeDefItemID`),
  ADD KEY `FK589045DF7699B003` (`CreatedByAgentID`),
  ADD KEY `FK589045DF53C7EFD6` (`StorageTreeDefID`),
  ADD KEY `FK589045DF3C85253A` (`ParentItemID`),
  ADD KEY `FK589045DF5327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `taxon`
--
ALTER TABLE `taxon`
  ADD PRIMARY KEY (`TaxonID`),
  ADD KEY `TaxonFullNameIDX` (`FullName`),
  ADD KEY `TaxonCommonNameIDX` (`CommonName`),
  ADD KEY `EnvironmentalProtectionStatusIDX` (`EnvironmentalProtectionStatus`),
  ADD KEY `TaxonomicSerialNumberIDX` (`TaxonomicSerialNumber`),
  ADD KEY `TaxonGuidIDX` (`GUID`),
  ADD KEY `TaxonNameIDX` (`Name`),
  ADD KEY `FK6908ECA7699B003` (`CreatedByAgentID`),
  ADD KEY `FK6908ECA7BF1F70B` (`VisibilitySetByID`),
  ADD KEY `FK6908ECAEFA9D5F8` (`TaxonTreeDefID`),
  ADD KEY `FK6908ECA2F773E09` (`AcceptedID`),
  ADD KEY `FK6908ECA70B1006E` (`HybridParent2ID`),
  ADD KEY `FK6908ECA70B0FCAD` (`HybridParent1ID`),
  ADD KEY `FK6908ECABB9210FE` (`TaxonTreeDefItemID`),
  ADD KEY `FK6908ECABE9D724C` (`ParentID`),
  ADD KEY `FK6908ECA5327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `taxonattachment`
--
ALTER TABLE `taxonattachment`
  ADD PRIMARY KEY (`TaxonAttachmentID`),
  ADD KEY `FKF523736D7699B003` (`CreatedByAgentID`),
  ADD KEY `FKF523736DC7E55084` (`AttachmentID`),
  ADD KEY `FKF523736D1D39F06C` (`TaxonID`),
  ADD KEY `FKF523736D5327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `taxoncitation`
--
ALTER TABLE `taxoncitation`
  ADD PRIMARY KEY (`TaxonCitationID`),
  ADD KEY `FK14242FB17699B003` (`CreatedByAgentID`),
  ADD KEY `FK14242FB169734F30` (`ReferenceWorkID`),
  ADD KEY `FK14242FB11D39F06C` (`TaxonID`),
  ADD KEY `FK14242FB15327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `taxontreedef`
--
ALTER TABLE `taxontreedef`
  ADD PRIMARY KEY (`TaxonTreeDefID`),
  ADD KEY `FK169B1D9D7699B003` (`CreatedByAgentID`),
  ADD KEY `FK169B1D9D5327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `taxontreedefitem`
--
ALTER TABLE `taxontreedefitem`
  ADD PRIMARY KEY (`TaxonTreeDefItemID`),
  ADD KEY `FKF29A82307699B003` (`CreatedByAgentID`),
  ADD KEY `FKF29A8230EFA9D5F8` (`TaxonTreeDefID`),
  ADD KEY `FKF29A82306A76BE4B` (`ParentItemID`),
  ADD KEY `FKF29A82305327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `treatmentevent`
--
ALTER TABLE `treatmentevent`
  ADD PRIMARY KEY (`TreatmentEventID`),
  ADD KEY `TETreatmentNumberIDX` (`TreatmentNumber`),
  ADD KEY `TEFieldNumberIDX` (`FieldNumber`),
  ADD KEY `TEDateReceivedIDX` (`DateReceived`),
  ADD KEY `TEDateTreatmentStartedIDX` (`DateTreatmentStarted`),
  ADD KEY `FK577D85227699B003` (`CreatedByAgentID`),
  ADD KEY `FK577D852275E37458` (`CollectionObjectID`),
  ADD KEY `FK577D8522410EB2B4` (`PerformedByID`),
  ADD KEY `FK577D852297C961D8` (`DivisionID`),
  ADD KEY `FK577D85227D49A30F` (`AuthorizedByID`),
  ADD KEY `FK577D85223925EE20` (`AccessionID`),
  ADD KEY `FK577D85225327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `treatmenteventattachment`
--
ALTER TABLE `treatmenteventattachment`
  ADD PRIMARY KEY (`TreatmentEventAttachmentID`),
  ADD KEY `FK1725BC57699B003` (`CreatedByAgentID`),
  ADD KEY `FK1725BC5C7E55084` (`AttachmentID`),
  ADD KEY `FK1725BC52BE40B22` (`TreatmentEventID`),
  ADD KEY `FK1725BC55327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `workbench`
--
ALTER TABLE `workbench`
  ADD PRIMARY KEY (`WorkbenchID`),
  ADD KEY `WorkbenchNameIDX` (`Name`),
  ADD KEY `FK41238DBF7699B003` (`CreatedByAgentID`),
  ADD KEY `FK41238DBF7F5EBA2A` (`WorkbenchTemplateID`),
  ADD KEY `FK41238DBF4BDD9E10` (`SpecifyUserID`),
  ADD KEY `FK41238DBF99A7381A` (`SpPrincipalID`),
  ADD KEY `FK41238DBF5327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `workbenchdataitem`
--
ALTER TABLE `workbenchdataitem`
  ADD PRIMARY KEY (`WorkbenchDataItemID`),
  ADD KEY `DataItemRowNumberIDX` (`RowNumber`),
  ADD KEY `FK2901E47CC66EB2D4` (`WorkbenchRowID`),
  ADD KEY `FK2901E47C688C522E` (`WorkbenchTemplateMappingItemID`);

--
-- Index pour la table `workbenchrow`
--
ALTER TABLE `workbenchrow`
  ADD PRIMARY KEY (`WorkbenchRowID`),
  ADD KEY `RowNumberIDX` (`RowNumber`),
  ADD KEY `FK486DDFBBBBCF9E96` (`WorkbenchID`);

--
-- Index pour la table `workbenchrowexportedrelationship`
--
ALTER TABLE `workbenchrowexportedrelationship`
  ADD PRIMARY KEY (`WorkbenchRowExportedRelationshipID`),
  ADD KEY `FK6829C9467699B003` (`CreatedByAgentID`),
  ADD KEY `FK6829C946C66EB2D4` (`WorkbenchRowID`),
  ADD KEY `FK6829C9465327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `workbenchrowimage`
--
ALTER TABLE `workbenchrowimage`
  ADD PRIMARY KEY (`WorkbenchRowImageID`),
  ADD KEY `FKC17A6680C66EB2D4` (`WorkbenchRowID`);

--
-- Index pour la table `workbenchtemplate`
--
ALTER TABLE `workbenchtemplate`
  ADD PRIMARY KEY (`WorkbenchTemplateID`),
  ADD KEY `FK6F902B397699B003` (`CreatedByAgentID`),
  ADD KEY `FK6F902B394BDD9E10` (`SpecifyUserID`),
  ADD KEY `FK6F902B395327F942` (`ModifiedByAgentID`);

--
-- Index pour la table `workbenchtemplatemappingitem`
--
ALTER TABLE `workbenchtemplatemappingitem`
  ADD PRIMARY KEY (`WorkbenchTemplateMappingItemID`),
  ADD KEY `FK7D6D44087699B003` (`CreatedByAgentID`),
  ADD KEY `FK7D6D44087F5EBA2A` (`WorkbenchTemplateID`),
  ADD KEY `FK7D6D44085327F942` (`ModifiedByAgentID`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `accession`
--
ALTER TABLE `accession`
  MODIFY `AccessionID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `accessionagent`
--
ALTER TABLE `accessionagent`
  MODIFY `AccessionAgentID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `accessionattachment`
--
ALTER TABLE `accessionattachment`
  MODIFY `AccessionAttachmentID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `accessionauthorization`
--
ALTER TABLE `accessionauthorization`
  MODIFY `AccessionAuthorizationID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `address`
--
ALTER TABLE `address`
  MODIFY `AddressID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `addressofrecord`
--
ALTER TABLE `addressofrecord`
  MODIFY `AddressOfRecordID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `agent`
--
ALTER TABLE `agent`
  MODIFY `AgentID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `agentattachment`
--
ALTER TABLE `agentattachment`
  MODIFY `AgentAttachmentID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `agentgeography`
--
ALTER TABLE `agentgeography`
  MODIFY `AgentGeographyID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `agentspecialty`
--
ALTER TABLE `agentspecialty`
  MODIFY `AgentSpecialtyID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `agentvariant`
--
ALTER TABLE `agentvariant`
  MODIFY `AgentVariantID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `appraisal`
--
ALTER TABLE `appraisal`
  MODIFY `AppraisalID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `attachment`
--
ALTER TABLE `attachment`
  MODIFY `AttachmentID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `attachmentimageattribute`
--
ALTER TABLE `attachmentimageattribute`
  MODIFY `AttachmentImageAttributeID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `attachmentmetadata`
--
ALTER TABLE `attachmentmetadata`
  MODIFY `AttachmentMetadataID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `attachmenttag`
--
ALTER TABLE `attachmenttag`
  MODIFY `AttachmentTagID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `attributedef`
--
ALTER TABLE `attributedef`
  MODIFY `AttributeDefID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `author`
--
ALTER TABLE `author`
  MODIFY `AuthorID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `autonumberingscheme`
--
ALTER TABLE `autonumberingscheme`
  MODIFY `AutoNumberingSchemeID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `borrow`
--
ALTER TABLE `borrow`
  MODIFY `BorrowID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `borrowagent`
--
ALTER TABLE `borrowagent`
  MODIFY `BorrowAgentID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `borrowattachment`
--
ALTER TABLE `borrowattachment`
  MODIFY `BorrowAttachmentID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `borrowmaterial`
--
ALTER TABLE `borrowmaterial`
  MODIFY `BorrowMaterialID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `borrowreturnmaterial`
--
ALTER TABLE `borrowreturnmaterial`
  MODIFY `BorrowReturnMaterialID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `collectingevent`
--
ALTER TABLE `collectingevent`
  MODIFY `CollectingEventID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `collectingeventattachment`
--
ALTER TABLE `collectingeventattachment`
  MODIFY `CollectingEventAttachmentID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `collectingeventattr`
--
ALTER TABLE `collectingeventattr`
  MODIFY `AttrID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `collectingeventattribute`
--
ALTER TABLE `collectingeventattribute`
  MODIFY `CollectingEventAttributeID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `collectingtrip`
--
ALTER TABLE `collectingtrip`
  MODIFY `CollectingTripID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `collectionobject`
--
ALTER TABLE `collectionobject`
  MODIFY `CollectionObjectID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `collectionobjectattachment`
--
ALTER TABLE `collectionobjectattachment`
  MODIFY `CollectionObjectAttachmentID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `collectionobjectattr`
--
ALTER TABLE `collectionobjectattr`
  MODIFY `AttrID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `collectionobjectattribute`
--
ALTER TABLE `collectionobjectattribute`
  MODIFY `CollectionObjectAttributeID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `collectionobjectcitation`
--
ALTER TABLE `collectionobjectcitation`
  MODIFY `CollectionObjectCitationID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `collectionrelationship`
--
ALTER TABLE `collectionrelationship`
  MODIFY `CollectionRelationshipID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `collectionreltype`
--
ALTER TABLE `collectionreltype`
  MODIFY `CollectionRelTypeID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `collector`
--
ALTER TABLE `collector`
  MODIFY `CollectorID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `commonnametx`
--
ALTER TABLE `commonnametx`
  MODIFY `CommonNameTxID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `commonnametxcitation`
--
ALTER TABLE `commonnametxcitation`
  MODIFY `CommonNameTxCitationID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `conservdescription`
--
ALTER TABLE `conservdescription`
  MODIFY `ConservDescriptionID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `conservdescriptionattachment`
--
ALTER TABLE `conservdescriptionattachment`
  MODIFY `ConservDescriptionAttachmentID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `conservevent`
--
ALTER TABLE `conservevent`
  MODIFY `ConservEventID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `conserveventattachment`
--
ALTER TABLE `conserveventattachment`
  MODIFY `ConservEventAttachmentID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `container`
--
ALTER TABLE `container`
  MODIFY `ContainerID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `datatype`
--
ALTER TABLE `datatype`
  MODIFY `DataTypeID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `deaccession`
--
ALTER TABLE `deaccession`
  MODIFY `DeaccessionID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `deaccessionagent`
--
ALTER TABLE `deaccessionagent`
  MODIFY `DeaccessionAgentID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `deaccessionpreparation`
--
ALTER TABLE `deaccessionpreparation`
  MODIFY `DeaccessionPreparationID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `determination`
--
ALTER TABLE `determination`
  MODIFY `DeterminationID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `determinationcitation`
--
ALTER TABLE `determinationcitation`
  MODIFY `DeterminationCitationID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `dnaprimer`
--
ALTER TABLE `dnaprimer`
  MODIFY `DNAPrimerID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `dnasequence`
--
ALTER TABLE `dnasequence`
  MODIFY `DnaSequenceID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `dnasequenceattachment`
--
ALTER TABLE `dnasequenceattachment`
  MODIFY `DnaSequenceAttachmentId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `dnasequencerunattachment`
--
ALTER TABLE `dnasequencerunattachment`
  MODIFY `DnaSequencingRunAttachmentId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `dnasequencingrun`
--
ALTER TABLE `dnasequencingrun`
  MODIFY `DNASequencingRunID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `dnasequencingruncitation`
--
ALTER TABLE `dnasequencingruncitation`
  MODIFY `DNASequencingRunCitationID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `exchangein`
--
ALTER TABLE `exchangein`
  MODIFY `ExchangeInID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `exchangeinprep`
--
ALTER TABLE `exchangeinprep`
  MODIFY `ExchangeInPrepID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `exchangeout`
--
ALTER TABLE `exchangeout`
  MODIFY `ExchangeOutID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `exchangeoutprep`
--
ALTER TABLE `exchangeoutprep`
  MODIFY `ExchangeOutPrepID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `exsiccata`
--
ALTER TABLE `exsiccata`
  MODIFY `ExsiccataID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `exsiccataitem`
--
ALTER TABLE `exsiccataitem`
  MODIFY `ExsiccataItemID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `fieldnotebook`
--
ALTER TABLE `fieldnotebook`
  MODIFY `FieldNotebookID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `fieldnotebookattachment`
--
ALTER TABLE `fieldnotebookattachment`
  MODIFY `FieldNotebookAttachmentId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `fieldnotebookpage`
--
ALTER TABLE `fieldnotebookpage`
  MODIFY `FieldNotebookPageID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `fieldnotebookpageattachment`
--
ALTER TABLE `fieldnotebookpageattachment`
  MODIFY `FieldNotebookPageAttachmentId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `fieldnotebookpageset`
--
ALTER TABLE `fieldnotebookpageset`
  MODIFY `FieldNotebookPageSetID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `fieldnotebookpagesetattachment`
--
ALTER TABLE `fieldnotebookpagesetattachment`
  MODIFY `FieldNotebookPageSetAttachmentId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `fundingagent`
--
ALTER TABLE `fundingagent`
  MODIFY `FundingAgentID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `geocoorddetail`
--
ALTER TABLE `geocoorddetail`
  MODIFY `GeoCoordDetailID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `geography`
--
ALTER TABLE `geography`
  MODIFY `GeographyID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `geographytreedef`
--
ALTER TABLE `geographytreedef`
  MODIFY `GeographyTreeDefID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `geographytreedefitem`
--
ALTER TABLE `geographytreedefitem`
  MODIFY `GeographyTreeDefItemID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `geologictimeperiod`
--
ALTER TABLE `geologictimeperiod`
  MODIFY `GeologicTimePeriodID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `geologictimeperiodtreedef`
--
ALTER TABLE `geologictimeperiodtreedef`
  MODIFY `GeologicTimePeriodTreeDefID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `geologictimeperiodtreedefitem`
--
ALTER TABLE `geologictimeperiodtreedefitem`
  MODIFY `GeologicTimePeriodTreeDefItemID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `gift`
--
ALTER TABLE `gift`
  MODIFY `GiftID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `giftagent`
--
ALTER TABLE `giftagent`
  MODIFY `GiftAgentID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `giftattachment`
--
ALTER TABLE `giftattachment`
  MODIFY `GiftAttachmentID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `giftpreparation`
--
ALTER TABLE `giftpreparation`
  MODIFY `GiftPreparationID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `groupperson`
--
ALTER TABLE `groupperson`
  MODIFY `GroupPersonID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `inforequest`
--
ALTER TABLE `inforequest`
  MODIFY `InfoRequestID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `institutionnetwork`
--
ALTER TABLE `institutionnetwork`
  MODIFY `InstitutionNetworkID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `journal`
--
ALTER TABLE `journal`
  MODIFY `JournalID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `latlonpolygon`
--
ALTER TABLE `latlonpolygon`
  MODIFY `LatLonPolygonID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `latlonpolygonpnt`
--
ALTER TABLE `latlonpolygonpnt`
  MODIFY `LatLonPolygonPntID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `lithostrat`
--
ALTER TABLE `lithostrat`
  MODIFY `LithoStratID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `lithostrattreedef`
--
ALTER TABLE `lithostrattreedef`
  MODIFY `LithoStratTreeDefID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `lithostrattreedefitem`
--
ALTER TABLE `lithostrattreedefitem`
  MODIFY `LithoStratTreeDefItemID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `loan`
--
ALTER TABLE `loan`
  MODIFY `LoanID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `loanagent`
--
ALTER TABLE `loanagent`
  MODIFY `LoanAgentID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `loanattachment`
--
ALTER TABLE `loanattachment`
  MODIFY `LoanAttachmentID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `loanpreparation`
--
ALTER TABLE `loanpreparation`
  MODIFY `LoanPreparationID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `loanreturnpreparation`
--
ALTER TABLE `loanreturnpreparation`
  MODIFY `LoanReturnPreparationID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `locality`
--
ALTER TABLE `locality`
  MODIFY `LocalityID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `localityattachment`
--
ALTER TABLE `localityattachment`
  MODIFY `LocalityAttachmentID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `localitycitation`
--
ALTER TABLE `localitycitation`
  MODIFY `LocalityCitationID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `localitydetail`
--
ALTER TABLE `localitydetail`
  MODIFY `LocalityDetailID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `localitynamealias`
--
ALTER TABLE `localitynamealias`
  MODIFY `LocalityNameAliasID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `materialsample`
--
ALTER TABLE `materialsample`
  MODIFY `MaterialSampleID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `morphbankview`
--
ALTER TABLE `morphbankview`
  MODIFY `MorphBankViewID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `otheridentifier`
--
ALTER TABLE `otheridentifier`
  MODIFY `OtherIdentifierID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `paleocontext`
--
ALTER TABLE `paleocontext`
  MODIFY `PaleoContextID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `permit`
--
ALTER TABLE `permit`
  MODIFY `PermitID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `permitattachment`
--
ALTER TABLE `permitattachment`
  MODIFY `PermitAttachmentID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `picklist`
--
ALTER TABLE `picklist`
  MODIFY `PickListID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `picklistitem`
--
ALTER TABLE `picklistitem`
  MODIFY `PickListItemID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `preparation`
--
ALTER TABLE `preparation`
  MODIFY `PreparationID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `preparationattachment`
--
ALTER TABLE `preparationattachment`
  MODIFY `PreparationAttachmentID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `preparationattr`
--
ALTER TABLE `preparationattr`
  MODIFY `AttrID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `preparationattribute`
--
ALTER TABLE `preparationattribute`
  MODIFY `PreparationAttributeID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `preptype`
--
ALTER TABLE `preptype`
  MODIFY `PrepTypeID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `project`
--
ALTER TABLE `project`
  MODIFY `ProjectID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `recordset`
--
ALTER TABLE `recordset`
  MODIFY `RecordSetID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `recordsetitem`
--
ALTER TABLE `recordsetitem`
  MODIFY `RecordSetItemID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `referencework`
--
ALTER TABLE `referencework`
  MODIFY `ReferenceWorkID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `referenceworkattachment`
--
ALTER TABLE `referenceworkattachment`
  MODIFY `ReferenceWorkAttachmentID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `repositoryagreement`
--
ALTER TABLE `repositoryagreement`
  MODIFY `RepositoryAgreementID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `repositoryagreementattachment`
--
ALTER TABLE `repositoryagreementattachment`
  MODIFY `RepositoryAgreementAttachmentID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `sgrbatchmatchresultitem`
--
ALTER TABLE `sgrbatchmatchresultitem`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `sgrbatchmatchresultset`
--
ALTER TABLE `sgrbatchmatchresultset`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `sgrmatchconfiguration`
--
ALTER TABLE `sgrmatchconfiguration`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `shipment`
--
ALTER TABLE `shipment`
  MODIFY `ShipmentID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `spappresource`
--
ALTER TABLE `spappresource`
  MODIFY `SpAppResourceID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `spappresourcedata`
--
ALTER TABLE `spappresourcedata`
  MODIFY `SpAppResourceDataID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `spappresourcedir`
--
ALTER TABLE `spappresourcedir`
  MODIFY `SpAppResourceDirID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `spauditlog`
--
ALTER TABLE `spauditlog`
  MODIFY `SpAuditLogID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `spauditlogfield`
--
ALTER TABLE `spauditlogfield`
  MODIFY `SpAuditLogFieldID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `specifyuser`
--
ALTER TABLE `specifyuser`
  MODIFY `SpecifyUserID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `spexportschema`
--
ALTER TABLE `spexportschema`
  MODIFY `SpExportSchemaID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `spexportschemaitem`
--
ALTER TABLE `spexportschemaitem`
  MODIFY `SpExportSchemaItemID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `spexportschemaitemmapping`
--
ALTER TABLE `spexportschemaitemmapping`
  MODIFY `SpExportSchemaItemMappingID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `spexportschemamapping`
--
ALTER TABLE `spexportschemamapping`
  MODIFY `SpExportSchemaMappingID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `spfieldvaluedefault`
--
ALTER TABLE `spfieldvaluedefault`
  MODIFY `SpFieldValueDefaultID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `splocalecontainer`
--
ALTER TABLE `splocalecontainer`
  MODIFY `SpLocaleContainerID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `splocalecontaineritem`
--
ALTER TABLE `splocalecontaineritem`
  MODIFY `SpLocaleContainerItemID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `splocaleitemstr`
--
ALTER TABLE `splocaleitemstr`
  MODIFY `SpLocaleItemStrID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `sppermission`
--
ALTER TABLE `sppermission`
  MODIFY `SpPermissionID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `spprincipal`
--
ALTER TABLE `spprincipal`
  MODIFY `SpPrincipalID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `spquery`
--
ALTER TABLE `spquery`
  MODIFY `SpQueryID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `spqueryfield`
--
ALTER TABLE `spqueryfield`
  MODIFY `SpQueryFieldID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `spreport`
--
ALTER TABLE `spreport`
  MODIFY `SpReportId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `spsymbiotainstance`
--
ALTER TABLE `spsymbiotainstance`
  MODIFY `SpSymbiotaInstanceID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `sptasksemaphore`
--
ALTER TABLE `sptasksemaphore`
  MODIFY `TaskSemaphoreID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `spversion`
--
ALTER TABLE `spversion`
  MODIFY `SpVersionID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `spviewsetobj`
--
ALTER TABLE `spviewsetobj`
  MODIFY `SpViewSetObjID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `spvisualquery`
--
ALTER TABLE `spvisualquery`
  MODIFY `SpVisualQueryID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `storage`
--
ALTER TABLE `storage`
  MODIFY `StorageID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `storageattachment`
--
ALTER TABLE `storageattachment`
  MODIFY `StorageAttachmentID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `storagetreedef`
--
ALTER TABLE `storagetreedef`
  MODIFY `StorageTreeDefID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `storagetreedefitem`
--
ALTER TABLE `storagetreedefitem`
  MODIFY `StorageTreeDefItemID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `taxon`
--
ALTER TABLE `taxon`
  MODIFY `TaxonID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `taxonattachment`
--
ALTER TABLE `taxonattachment`
  MODIFY `TaxonAttachmentID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `taxoncitation`
--
ALTER TABLE `taxoncitation`
  MODIFY `TaxonCitationID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `taxontreedef`
--
ALTER TABLE `taxontreedef`
  MODIFY `TaxonTreeDefID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `taxontreedefitem`
--
ALTER TABLE `taxontreedefitem`
  MODIFY `TaxonTreeDefItemID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `treatmentevent`
--
ALTER TABLE `treatmentevent`
  MODIFY `TreatmentEventID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `treatmenteventattachment`
--
ALTER TABLE `treatmenteventattachment`
  MODIFY `TreatmentEventAttachmentID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `workbench`
--
ALTER TABLE `workbench`
  MODIFY `WorkbenchID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `workbenchdataitem`
--
ALTER TABLE `workbenchdataitem`
  MODIFY `WorkbenchDataItemID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `workbenchrow`
--
ALTER TABLE `workbenchrow`
  MODIFY `WorkbenchRowID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `workbenchrowexportedrelationship`
--
ALTER TABLE `workbenchrowexportedrelationship`
  MODIFY `WorkbenchRowExportedRelationshipID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `workbenchrowimage`
--
ALTER TABLE `workbenchrowimage`
  MODIFY `WorkbenchRowImageID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `workbenchtemplate`
--
ALTER TABLE `workbenchtemplate`
  MODIFY `WorkbenchTemplateID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `workbenchtemplatemappingitem`
--
ALTER TABLE `workbenchtemplatemappingitem`
  MODIFY `WorkbenchTemplateMappingItemID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `accession`
--
ALTER TABLE `accession`
  ADD CONSTRAINT `FK81EF38243EBC6278` FOREIGN KEY (`RepositoryAgreementID`) REFERENCES `repositoryagreement` (`RepositoryAgreementID`),
  ADD CONSTRAINT `FK81EF38245327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK81EF38247699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK81EF382497C961D8` FOREIGN KEY (`DivisionID`) REFERENCES `division` (`UserGroupScopeId`),
  ADD CONSTRAINT `FK81EF3824DC8B4810` FOREIGN KEY (`AddressOfRecordID`) REFERENCES `addressofrecord` (`AddressOfRecordID`);

--
-- Contraintes pour la table `accessionagent`
--
ALTER TABLE `accessionagent`
  ADD CONSTRAINT `FK2DC98161384B3622` FOREIGN KEY (`AgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK2DC981613925EE20` FOREIGN KEY (`AccessionID`) REFERENCES `accession` (`AccessionID`),
  ADD CONSTRAINT `FK2DC981613EBC6278` FOREIGN KEY (`RepositoryAgreementID`) REFERENCES `repositoryagreement` (`RepositoryAgreementID`),
  ADD CONSTRAINT `FK2DC981615327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK2DC981617699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`);

--
-- Contraintes pour la table `accessionattachment`
--
ALTER TABLE `accessionattachment`
  ADD CONSTRAINT `FKA569B4473925EE20` FOREIGN KEY (`AccessionID`) REFERENCES `accession` (`AccessionID`),
  ADD CONSTRAINT `FKA569B4475327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKA569B4477699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKA569B447C7E55084` FOREIGN KEY (`AttachmentID`) REFERENCES `attachment` (`AttachmentID`);

--
-- Contraintes pour la table `accessionauthorization`
--
ALTER TABLE `accessionauthorization`
  ADD CONSTRAINT `FK4F2602D53925EE20` FOREIGN KEY (`AccessionID`) REFERENCES `accession` (`AccessionID`),
  ADD CONSTRAINT `FK4F2602D53EBC6278` FOREIGN KEY (`RepositoryAgreementID`) REFERENCES `repositoryagreement` (`RepositoryAgreementID`),
  ADD CONSTRAINT `FK4F2602D55327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK4F2602D57699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK4F2602D5AD1F31F4` FOREIGN KEY (`PermitID`) REFERENCES `permit` (`PermitID`);

--
-- Contraintes pour la table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `FKBB979BF4384B3622` FOREIGN KEY (`AgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKBB979BF45327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKBB979BF47699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`);

--
-- Contraintes pour la table `addressofrecord`
--
ALTER TABLE `addressofrecord`
  ADD CONSTRAINT `FKDBAAE4DC384B3622` FOREIGN KEY (`AgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKDBAAE4DC5327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKDBAAE4DC7699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`);

--
-- Contraintes pour la table `agent`
--
ALTER TABLE `agent`
  ADD CONSTRAINT `FK58743053D2DAD9A` FOREIGN KEY (`CollectionCCID`) REFERENCES `collection` (`UserGroupScopeId`),
  ADD CONSTRAINT `FK58743053D3567E9` FOREIGN KEY (`CollectionTCID`) REFERENCES `collection` (`UserGroupScopeId`),
  ADD CONSTRAINT `FK58743054834EDBB` FOREIGN KEY (`InstitutionTCID`) REFERENCES `institutionnetwork` (`InstitutionNetworkID`),
  ADD CONSTRAINT `FK58743054BDD9E10` FOREIGN KEY (`SpecifyUserID`) REFERENCES `specifyuser` (`SpecifyUserID`),
  ADD CONSTRAINT `FK58743055327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK58743057699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK587430584B8A3FA` FOREIGN KEY (`ParentOrganizationID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK587430587E99F68` FOREIGN KEY (`InstitutionCCID`) REFERENCES `institution` (`UserGroupScopeId`),
  ADD CONSTRAINT `FK587430587F159B7` FOREIGN KEY (`InstitutionTCID`) REFERENCES `institution` (`UserGroupScopeId`),
  ADD CONSTRAINT `FK587430597C961D8` FOREIGN KEY (`DivisionID`) REFERENCES `division` (`UserGroupScopeId`);

--
-- Contraintes pour la table `agentattachment`
--
ALTER TABLE `agentattachment`
  ADD CONSTRAINT `FK56FE59E8384B3622` FOREIGN KEY (`AgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK56FE59E85327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK56FE59E87699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK56FE59E8C7E55084` FOREIGN KEY (`AttachmentID`) REFERENCES `attachment` (`AttachmentID`);

--
-- Contraintes pour la table `agentgeography`
--
ALTER TABLE `agentgeography`
  ADD CONSTRAINT `FK89CDCA17384B3622` FOREIGN KEY (`AgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK89CDCA175327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK89CDCA177699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK89CDCA17D649F6D0` FOREIGN KEY (`GeographyID`) REFERENCES `geography` (`GeographyID`);

--
-- Contraintes pour la table `agentspecialty`
--
ALTER TABLE `agentspecialty`
  ADD CONSTRAINT `FKDB5F5799384B3622` FOREIGN KEY (`AgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKDB5F57995327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKDB5F57997699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`);

--
-- Contraintes pour la table `agentvariant`
--
ALTER TABLE `agentvariant`
  ADD CONSTRAINT `FK8DA4DE0384B3622` FOREIGN KEY (`AgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK8DA4DE05327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK8DA4DE07699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`);

--
-- Contraintes pour la table `appraisal`
--
ALTER TABLE `appraisal`
  ADD CONSTRAINT `FK8D3C72E5384B3622` FOREIGN KEY (`AgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK8D3C72E53925EE20` FOREIGN KEY (`AccessionID`) REFERENCES `accession` (`AccessionID`),
  ADD CONSTRAINT `FK8D3C72E55327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK8D3C72E57699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`);

--
-- Contraintes pour la table `attachment`
--
ALTER TABLE `attachment`
  ADD CONSTRAINT `FK8AF759235327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK8AF759237699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK8AF759237BF1F70B` FOREIGN KEY (`VisibilitySetByID`) REFERENCES `specifyuser` (`SpecifyUserID`),
  ADD CONSTRAINT `FK8AF759239B37C589` FOREIGN KEY (`CreatorID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK8AF75923C620DBC6` FOREIGN KEY (`AttachmentImageAttributeID`) REFERENCES `attachmentimageattribute` (`AttachmentImageAttributeID`);

--
-- Contraintes pour la table `attachmentimageattribute`
--
ALTER TABLE `attachmentimageattribute`
  ADD CONSTRAINT `FK857D77845327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK857D77847699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK857D7784FD8D2A2A` FOREIGN KEY (`MorphBankViewID`) REFERENCES `morphbankview` (`MorphBankViewID`);

--
-- Contraintes pour la table `attachmentmetadata`
--
ALTER TABLE `attachmentmetadata`
  ADD CONSTRAINT `FK991701525327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK991701527699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK99170152C7E55084` FOREIGN KEY (`AttachmentID`) REFERENCES `attachment` (`AttachmentID`);

--
-- Contraintes pour la table `attachmenttag`
--
ALTER TABLE `attachmenttag`
  ADD CONSTRAINT `FKA62FAF975327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKA62FAF977699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKA62FAF97C7E55084` FOREIGN KEY (`AttachmentID`) REFERENCES `attachment` (`AttachmentID`);

--
-- Contraintes pour la table `attributedef`
--
ALTER TABLE `attributedef`
  ADD CONSTRAINT `FKC36883E94CE675DE` FOREIGN KEY (`DisciplineID`) REFERENCES `discipline` (`UserGroupScopeId`),
  ADD CONSTRAINT `FKC36883E95327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKC36883E96E8973EC` FOREIGN KEY (`PrepTypeID`) REFERENCES `preptype` (`PrepTypeID`),
  ADD CONSTRAINT `FKC36883E97699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`);

--
-- Contraintes pour la table `author`
--
ALTER TABLE `author`
  ADD CONSTRAINT `FKAC2D218B384B3622` FOREIGN KEY (`AgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKAC2D218B5327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKAC2D218B69734F30` FOREIGN KEY (`ReferenceWorkID`) REFERENCES `referencework` (`ReferenceWorkID`),
  ADD CONSTRAINT `FKAC2D218B7699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`);

--
-- Contraintes pour la table `autonumberingscheme`
--
ALTER TABLE `autonumberingscheme`
  ADD CONSTRAINT `FK8227D14F5327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK8227D14F7699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`);

--
-- Contraintes pour la table `autonumsch_coll`
--
ALTER TABLE `autonumsch_coll`
  ADD CONSTRAINT `FK46F04F2A8C2288BA` FOREIGN KEY (`CollectionID`) REFERENCES `collection` (`UserGroupScopeId`),
  ADD CONSTRAINT `FK46F04F2AFE55DD76` FOREIGN KEY (`AutoNumberingSchemeID`) REFERENCES `autonumberingscheme` (`AutoNumberingSchemeID`);

--
-- Contraintes pour la table `autonumsch_div`
--
ALTER TABLE `autonumsch_div`
  ADD CONSTRAINT `FKA8BE49397C961D8` FOREIGN KEY (`DivisionID`) REFERENCES `division` (`UserGroupScopeId`),
  ADD CONSTRAINT `FKA8BE493FE55DD76` FOREIGN KEY (`AutoNumberingSchemeID`) REFERENCES `autonumberingscheme` (`AutoNumberingSchemeID`);

--
-- Contraintes pour la table `autonumsch_dsp`
--
ALTER TABLE `autonumsch_dsp`
  ADD CONSTRAINT `FKA8BE5C34CE675DE` FOREIGN KEY (`DisciplineID`) REFERENCES `discipline` (`UserGroupScopeId`),
  ADD CONSTRAINT `FKA8BE5C3FE55DD76` FOREIGN KEY (`AutoNumberingSchemeID`) REFERENCES `autonumberingscheme` (`AutoNumberingSchemeID`);

--
-- Contraintes pour la table `borrow`
--
ALTER TABLE `borrow`
  ADD CONSTRAINT `FKAD8CA9F55327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKAD8CA9F57699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKAD8CA9F5DC8B4810` FOREIGN KEY (`AddressOfRecordID`) REFERENCES `addressofrecord` (`AddressOfRecordID`);

--
-- Contraintes pour la table `borrowagent`
--
ALTER TABLE `borrowagent`
  ADD CONSTRAINT `FKF48F8A30384B3622` FOREIGN KEY (`AgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKF48F8A305327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKF48F8A307699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKF48F8A30F8BF6F28` FOREIGN KEY (`BorrowID`) REFERENCES `borrow` (`BorrowID`);

--
-- Contraintes pour la table `borrowattachment`
--
ALTER TABLE `borrowattachment`
  ADD CONSTRAINT `FK3263D4D85327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK3263D4D87699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK3263D4D8C7E55084` FOREIGN KEY (`AttachmentID`) REFERENCES `attachment` (`AttachmentID`),
  ADD CONSTRAINT `FK3263D4D8F8BF6F28` FOREIGN KEY (`BorrowID`) REFERENCES `borrow` (`BorrowID`);

--
-- Contraintes pour la table `borrowmaterial`
--
ALTER TABLE `borrowmaterial`
  ADD CONSTRAINT `FK86254A1C5327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK86254A1C7699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK86254A1CF8BF6F28` FOREIGN KEY (`BorrowID`) REFERENCES `borrow` (`BorrowID`);

--
-- Contraintes pour la table `borrowreturnmaterial`
--
ALTER TABLE `borrowreturnmaterial`
  ADD CONSTRAINT `FKA8170B8C5327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKA8170B8C7699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKA8170B8C83F392D6` FOREIGN KEY (`BorrowMaterialID`) REFERENCES `borrowmaterial` (`BorrowMaterialID`),
  ADD CONSTRAINT `FKA8170B8CC6A93143` FOREIGN KEY (`ReturnedByID`) REFERENCES `agent` (`AgentID`);

--
-- Contraintes pour la table `collectingevent`
--
ALTER TABLE `collectingevent`
  ADD CONSTRAINT `FKFEB30F224CE675DE` FOREIGN KEY (`DisciplineID`) REFERENCES `discipline` (`UserGroupScopeId`),
  ADD CONSTRAINT `FKFEB30F225327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKFEB30F22697B3F98` FOREIGN KEY (`CollectingTripID`) REFERENCES `collectingtrip` (`CollectingTripID`),
  ADD CONSTRAINT `FKFEB30F227699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKFEB30F227BF1F70B` FOREIGN KEY (`VisibilitySetByID`) REFERENCES `specifyuser` (`SpecifyUserID`),
  ADD CONSTRAINT `FKFEB30F2297ECD2B2` FOREIGN KEY (`PaleoContextID`) REFERENCES `paleocontext` (`PaleoContextID`),
  ADD CONSTRAINT `FKFEB30F22A666A5C4` FOREIGN KEY (`LocalityID`) REFERENCES `locality` (`LocalityID`),
  ADD CONSTRAINT `FKFEB30F22FEB93AB2` FOREIGN KEY (`CollectingEventAttributeID`) REFERENCES `collectingeventattribute` (`CollectingEventAttributeID`);

--
-- Contraintes pour la table `collectingeventattachment`
--
ALTER TABLE `collectingeventattachment`
  ADD CONSTRAINT `FK32C365C55327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK32C365C57699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK32C365C5B237E2BC` FOREIGN KEY (`CollectingEventID`) REFERENCES `collectingevent` (`CollectingEventID`),
  ADD CONSTRAINT `FK32C365C5C7E55084` FOREIGN KEY (`AttachmentID`) REFERENCES `attachment` (`AttachmentID`);

--
-- Contraintes pour la table `collectingeventattr`
--
ALTER TABLE `collectingeventattr`
  ADD CONSTRAINT `FK42A088135327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK42A088137699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK42A08813B237E2BC` FOREIGN KEY (`CollectingEventID`) REFERENCES `collectingevent` (`CollectingEventID`),
  ADD CONSTRAINT `FK42A08813E84BA7B0` FOREIGN KEY (`AttributeDefID`) REFERENCES `attributedef` (`AttributeDefID`);

--
-- Contraintes pour la table `collectingeventattribute`
--
ALTER TABLE `collectingeventattribute`
  ADD CONSTRAINT `FK9AD681BA32C0CDC4` FOREIGN KEY (`HostTaxonID`) REFERENCES `taxon` (`TaxonID`),
  ADD CONSTRAINT `FK9AD681BA4CE675DE` FOREIGN KEY (`DisciplineID`) REFERENCES `discipline` (`UserGroupScopeId`),
  ADD CONSTRAINT `FK9AD681BA5327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK9AD681BA7699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`);

--
-- Contraintes pour la table `collectingtrip`
--
ALTER TABLE `collectingtrip`
  ADD CONSTRAINT `FK1080269D4CE675DE` FOREIGN KEY (`DisciplineID`) REFERENCES `discipline` (`UserGroupScopeId`),
  ADD CONSTRAINT `FK1080269D5327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK1080269D7699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`);

--
-- Contraintes pour la table `collection`
--
ALTER TABLE `collection`
  ADD CONSTRAINT `FK3D0021605327F9429835ae9e` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK3D0021607699B0039835ae9e` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK9835AE9E4CE675DE` FOREIGN KEY (`DisciplineID`) REFERENCES `discipline` (`UserGroupScopeId`),
  ADD CONSTRAINT `FK9835AE9E6F3E820E` FOREIGN KEY (`AdminContactID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK9835AE9E9EAB854A` FOREIGN KEY (`InstitutionNetworkID`) REFERENCES `institutionnetwork` (`InstitutionNetworkID`),
  ADD CONSTRAINT `FK9835AE9EDE67F146` FOREIGN KEY (`InstitutionNetworkID`) REFERENCES `institution` (`UserGroupScopeId`);

--
-- Contraintes pour la table `collectionobject`
--
ALTER TABLE `collectionobject`
  ADD CONSTRAINT `FKC1D4635D3925EE20` FOREIGN KEY (`AccessionID`) REFERENCES `accession` (`AccessionID`),
  ADD CONSTRAINT `FKC1D4635D3B87E163` FOREIGN KEY (`CatalogerID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKC1D4635D5327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKC1D4635D73BF3AE0` FOREIGN KEY (`FieldNotebookPageID`) REFERENCES `fieldnotebookpage` (`FieldNotebookPageID`),
  ADD CONSTRAINT `FKC1D4635D7699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKC1D4635D7BF1F70B` FOREIGN KEY (`VisibilitySetByID`) REFERENCES `specifyuser` (`SpecifyUserID`),
  ADD CONSTRAINT `FKC1D4635D8C2288BA` FOREIGN KEY (`CollectionID`) REFERENCES `collection` (`UserGroupScopeId`),
  ADD CONSTRAINT `FKC1D4635D97ECD2B2` FOREIGN KEY (`PaleoContextID`) REFERENCES `paleocontext` (`PaleoContextID`),
  ADD CONSTRAINT `FKC1D4635D9F4EE41` FOREIGN KEY (`InventorizedByID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKC1D4635DA141B896` FOREIGN KEY (`CollectionObjectAttributeID`) REFERENCES `collectionobjectattribute` (`CollectionObjectAttributeID`),
  ADD CONSTRAINT `FKC1D4635DA40125AB` FOREIGN KEY (`ContainerOwnerID`) REFERENCES `container` (`ContainerID`),
  ADD CONSTRAINT `FKC1D4635DB15CB762` FOREIGN KEY (`AppraisalID`) REFERENCES `appraisal` (`AppraisalID`),
  ADD CONSTRAINT `FKC1D4635DB237E2BC` FOREIGN KEY (`CollectingEventID`) REFERENCES `collectingevent` (`CollectingEventID`),
  ADD CONSTRAINT `FKC1D4635DE816739A` FOREIGN KEY (`ContainerID`) REFERENCES `container` (`ContainerID`);

--
-- Contraintes pour la table `collectionobjectattachment`
--
ALTER TABLE `collectionobjectattachment`
  ADD CONSTRAINT `FK9C00EC405327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK9C00EC4075E37458` FOREIGN KEY (`CollectionObjectID`) REFERENCES `collectionobject` (`CollectionObjectID`),
  ADD CONSTRAINT `FK9C00EC407699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK9C00EC40C7E55084` FOREIGN KEY (`AttachmentID`) REFERENCES `attachment` (`AttachmentID`);

--
-- Contraintes pour la table `collectionobjectattr`
--
ALTER TABLE `collectionobjectattr`
  ADD CONSTRAINT `FK303746CE5327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK303746CE75E37458` FOREIGN KEY (`CollectionObjectID`) REFERENCES `collectionobject` (`CollectionObjectID`),
  ADD CONSTRAINT `FK303746CE7699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK303746CEE84BA7B0` FOREIGN KEY (`AttributeDefID`) REFERENCES `attributedef` (`AttributeDefID`);

--
-- Contraintes pour la table `collectionobjectattribute`
--
ALTER TABLE `collectionobjectattribute`
  ADD CONSTRAINT `FK32E0BFDF5327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK32E0BFDF7699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`);

--
-- Contraintes pour la table `collectionobjectcitation`
--
ALTER TABLE `collectionobjectcitation`
  ADD CONSTRAINT `FKAB9FC1445327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKAB9FC14469734F30` FOREIGN KEY (`ReferenceWorkID`) REFERENCES `referencework` (`ReferenceWorkID`),
  ADD CONSTRAINT `FKAB9FC14475E37458` FOREIGN KEY (`CollectionObjectID`) REFERENCES `collectionobject` (`CollectionObjectID`),
  ADD CONSTRAINT `FKAB9FC1447699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`);

--
-- Contraintes pour la table `collectionrelationship`
--
ALTER TABLE `collectionrelationship`
  ADD CONSTRAINT `FK246327D65327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK246327D6637B3A82` FOREIGN KEY (`CollectionRelTypeID`) REFERENCES `collectionreltype` (`CollectionRelTypeID`),
  ADD CONSTRAINT `FK246327D67699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK246327D678903837` FOREIGN KEY (`LeftSideCollectionID`) REFERENCES `collectionobject` (`CollectionObjectID`),
  ADD CONSTRAINT `FK246327D68240904C` FOREIGN KEY (`RightSideCollectionID`) REFERENCES `collectionobject` (`CollectionObjectID`);

--
-- Contraintes pour la table `collectionreltype`
--
ALTER TABLE `collectionreltype`
  ADD CONSTRAINT `FK1CAC96F55327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK1CAC96F57699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK1CAC96F5CB93CD98` FOREIGN KEY (`LeftSideCollectionID`) REFERENCES `collection` (`UserGroupScopeId`),
  ADD CONSTRAINT `FK1CAC96F5D54425AD` FOREIGN KEY (`RightSideCollectionID`) REFERENCES `collection` (`UserGroupScopeId`);

--
-- Contraintes pour la table `collector`
--
ALTER TABLE `collector`
  ADD CONSTRAINT `FK7043CC8D384B3622` FOREIGN KEY (`AgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK7043CC8D5327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK7043CC8D7699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK7043CC8D97C961D8` FOREIGN KEY (`DivisionID`) REFERENCES `division` (`UserGroupScopeId`),
  ADD CONSTRAINT `FK7043CC8DB237E2BC` FOREIGN KEY (`CollectingEventID`) REFERENCES `collectingevent` (`CollectingEventID`);

--
-- Contraintes pour la table `commonnametx`
--
ALTER TABLE `commonnametx`
  ADD CONSTRAINT `FK3413DFFA1D39F06C` FOREIGN KEY (`TaxonID`) REFERENCES `taxon` (`TaxonID`),
  ADD CONSTRAINT `FK3413DFFA5327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK3413DFFA7699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`);

--
-- Contraintes pour la table `commonnametxcitation`
--
ALTER TABLE `commonnametxcitation`
  ADD CONSTRAINT `FK829B50E115A0FFF2` FOREIGN KEY (`CommonNameTxID`) REFERENCES `commonnametx` (`CommonNameTxID`),
  ADD CONSTRAINT `FK829B50E15327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK829B50E169734F30` FOREIGN KEY (`ReferenceWorkID`) REFERENCES `referencework` (`ReferenceWorkID`),
  ADD CONSTRAINT `FK829B50E17699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`);

--
-- Contraintes pour la table `conservdescription`
--
ALTER TABLE `conservdescription`
  ADD CONSTRAINT `FKC040F4645327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKC040F46475E37458` FOREIGN KEY (`CollectionObjectID`) REFERENCES `collectionobject` (`CollectionObjectID`),
  ADD CONSTRAINT `FKC040F4647699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKC040F46497C961D8` FOREIGN KEY (`DivisionID`) REFERENCES `division` (`UserGroupScopeId`);

--
-- Contraintes pour la table `conservdescriptionattachment`
--
ALTER TABLE `conservdescriptionattachment`
  ADD CONSTRAINT `FK1EED20875327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK1EED20877699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK1EED20878FF9CFA6` FOREIGN KEY (`ConservDescriptionID`) REFERENCES `conservdescription` (`ConservDescriptionID`),
  ADD CONSTRAINT `FK1EED2087C7E55084` FOREIGN KEY (`AttachmentID`) REFERENCES `attachment` (`AttachmentID`);

--
-- Contraintes pour la table `conservevent`
--
ALTER TABLE `conservevent`
  ADD CONSTRAINT `FK74A8510227E00C28` FOREIGN KEY (`ExaminedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK74A851025327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK74A8510271496BD2` FOREIGN KEY (`TreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK74A851027699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK74A85102828C4E73` FOREIGN KEY (`CuratorID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK74A851028FF9CFA6` FOREIGN KEY (`ConservDescriptionID`) REFERENCES `conservdescription` (`ConservDescriptionID`);

--
-- Contraintes pour la table `conserveventattachment`
--
ALTER TABLE `conserveventattachment`
  ADD CONSTRAINT `FKD3F7CFA55327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKD3F7CFA57699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKD3F7CFA5C7E55084` FOREIGN KEY (`AttachmentID`) REFERENCES `attachment` (`AttachmentID`),
  ADD CONSTRAINT `FKD3F7CFA5F849E7A2` FOREIGN KEY (`ConservEventID`) REFERENCES `conservevent` (`ConservEventID`);

--
-- Contraintes pour la table `container`
--
ALTER TABLE `container`
  ADD CONSTRAINT `FKE7814C8121C1C983` FOREIGN KEY (`ParentID`) REFERENCES `container` (`ContainerID`),
  ADD CONSTRAINT `FKE7814C815327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKE7814C817699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKE7814C81EB48144E` FOREIGN KEY (`StorageID`) REFERENCES `storage` (`StorageID`);

--
-- Contraintes pour la table `datatype`
--
ALTER TABLE `datatype`
  ADD CONSTRAINT `FK6AB199E45327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK6AB199E47699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`);

--
-- Contraintes pour la table `deaccession`
--
ALTER TABLE `deaccession`
  ADD CONSTRAINT `FKC3EACC33925EE20` FOREIGN KEY (`AccessionID`) REFERENCES `accession` (`AccessionID`),
  ADD CONSTRAINT `FKC3EACC35327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKC3EACC37699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`);

--
-- Contraintes pour la table `deaccessionagent`
--
ALTER TABLE `deaccessionagent`
  ADD CONSTRAINT `FKBE551822384B3622` FOREIGN KEY (`AgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKBE5518225327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKBE5518227699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKBE551822BE26B05E` FOREIGN KEY (`DeaccessionID`) REFERENCES `deaccession` (`DeaccessionID`);

--
-- Contraintes pour la table `deaccessionpreparation`
--
ALTER TABLE `deaccessionpreparation`
  ADD CONSTRAINT `FK6A06F1F418627F06` FOREIGN KEY (`PreparationID`) REFERENCES `preparation` (`PreparationID`),
  ADD CONSTRAINT `FK6A06F1F45327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK6A06F1F47699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK6A06F1F4BE26B05E` FOREIGN KEY (`DeaccessionID`) REFERENCES `deaccession` (`DeaccessionID`);

--
-- Contraintes pour la table `determination`
--
ALTER TABLE `determination`
  ADD CONSTRAINT `FKC1E98FE31D39F06C` FOREIGN KEY (`TaxonID`) REFERENCES `taxon` (`TaxonID`),
  ADD CONSTRAINT `FKC1E98FE3280D00CB` FOREIGN KEY (`PreferredTaxonID`) REFERENCES `taxon` (`TaxonID`),
  ADD CONSTRAINT `FKC1E98FE35327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKC1E98FE375E37458` FOREIGN KEY (`CollectionObjectID`) REFERENCES `collectionobject` (`CollectionObjectID`),
  ADD CONSTRAINT `FKC1E98FE37699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKC1E98FE3E9268B1C` FOREIGN KEY (`DeterminerID`) REFERENCES `agent` (`AgentID`);

--
-- Contraintes pour la table `determinationcitation`
--
ALTER TABLE `determinationcitation`
  ADD CONSTRAINT `FK259B07CA47AE835E` FOREIGN KEY (`DeterminationID`) REFERENCES `determination` (`DeterminationID`),
  ADD CONSTRAINT `FK259B07CA5327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK259B07CA69734F30` FOREIGN KEY (`ReferenceWorkID`) REFERENCES `referencework` (`ReferenceWorkID`),
  ADD CONSTRAINT `FK259B07CA7699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`);

--
-- Contraintes pour la table `discipline`
--
ALTER TABLE `discipline`
  ADD CONSTRAINT `FK157B9B7072939D3A` FOREIGN KEY (`LithoStratTreeDefID`) REFERENCES `lithostrattreedef` (`LithoStratTreeDefID`),
  ADD CONSTRAINT `FK157B9B7097C961D8` FOREIGN KEY (`DivisionID`) REFERENCES `division` (`UserGroupScopeId`),
  ADD CONSTRAINT `FK157B9B709988ED70` FOREIGN KEY (`GeologicTimePeriodTreeDefID`) REFERENCES `geologictimeperiodtreedef` (`GeologicTimePeriodTreeDefID`),
  ADD CONSTRAINT `FK157B9B70BF9C9714` FOREIGN KEY (`GeographyTreeDefID`) REFERENCES `geographytreedef` (`GeographyTreeDefID`),
  ADD CONSTRAINT `FK157B9B70D62E36A6` FOREIGN KEY (`DataTypeID`) REFERENCES `datatype` (`DataTypeID`),
  ADD CONSTRAINT `FK157B9B70EFA9D5F8` FOREIGN KEY (`TaxonTreeDefID`) REFERENCES `taxontreedef` (`TaxonTreeDefID`),
  ADD CONSTRAINT `FK3D0021605327F942157b9b70` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK3D0021607699B003157b9b70` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`);

--
-- Contraintes pour la table `division`
--
ALTER TABLE `division`
  ADD CONSTRAINT `FK15BD30AD81223908` FOREIGN KEY (`InstitutionID`) REFERENCES `institution` (`UserGroupScopeId`),
  ADD CONSTRAINT `FK15BD30ADE6A64D00` FOREIGN KEY (`AddressID`) REFERENCES `address` (`AddressID`),
  ADD CONSTRAINT `FK3D0021605327F94215bd30ad` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK3D0021607699B00315bd30ad` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`);

--
-- Contraintes pour la table `dnaprimer`
--
ALTER TABLE `dnaprimer`
  ADD CONSTRAINT `FK5E4FB5AA5327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK5E4FB5AA7699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`);

--
-- Contraintes pour la table `dnasequence`
--
ALTER TABLE `dnasequence`
  ADD CONSTRAINT `FK9F42F5D8384B3622` FOREIGN KEY (`AgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK9F42F5D85327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK9F42F5D875E37458` FOREIGN KEY (`CollectionObjectID`) REFERENCES `collectionobject` (`CollectionObjectID`),
  ADD CONSTRAINT `FK9F42F5D87699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK9F42F5D8A1F7C080` FOREIGN KEY (`MaterialSampleID`) REFERENCES `materialsample` (`MaterialSampleID`);

--
-- Contraintes pour la table `dnasequenceattachment`
--
ALTER TABLE `dnasequenceattachment`
  ADD CONSTRAINT `FKFFC2E0FB265FB168` FOREIGN KEY (`DnaSequenceID`) REFERENCES `dnasequence` (`DnaSequenceID`),
  ADD CONSTRAINT `FKFFC2E0FB5327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKFFC2E0FB7699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKFFC2E0FBC7E55084` FOREIGN KEY (`AttachmentID`) REFERENCES `attachment` (`AttachmentID`);

--
-- Contraintes pour la table `dnasequencerunattachment`
--
ALTER TABLE `dnasequencerunattachment`
  ADD CONSTRAINT `FKD0DAEB165327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKD0DAEB167699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKD0DAEB1678F036AA` FOREIGN KEY (`DnaSequencingRunID`) REFERENCES `dnasequencingrun` (`DNASequencingRunID`),
  ADD CONSTRAINT `FKD0DAEB16C7E55084` FOREIGN KEY (`AttachmentID`) REFERENCES `attachment` (`AttachmentID`);

--
-- Contraintes pour la table `dnasequencingrun`
--
ALTER TABLE `dnasequencingrun`
  ADD CONSTRAINT `FK2AF6F9D6265FB168` FOREIGN KEY (`DNASequenceID`) REFERENCES `dnasequence` (`DnaSequenceID`),
  ADD CONSTRAINT `FK2AF6F9D65327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK2AF6F9D67699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK2AF6F9D6851BDBC0` FOREIGN KEY (`RunByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK2AF6F9D68C3587CC` FOREIGN KEY (`DNAPrimerID`) REFERENCES `dnaprimer` (`DNAPrimerID`),
  ADD CONSTRAINT `FK2AF6F9D6D76CA4E` FOREIGN KEY (`PreparedByAgentID`) REFERENCES `agent` (`AgentID`);

--
-- Contraintes pour la table `dnasequencingruncitation`
--
ALTER TABLE `dnasequencingruncitation`
  ADD CONSTRAINT `FK24CEBD5327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK24CEBD69734F30` FOREIGN KEY (`ReferenceWorkID`) REFERENCES `referencework` (`ReferenceWorkID`),
  ADD CONSTRAINT `FK24CEBD7699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK24CEBD78F036AA` FOREIGN KEY (`DNASequencingRunID`) REFERENCES `dnasequencingrun` (`DNASequencingRunID`);

--
-- Contraintes pour la table `exchangein`
--
ALTER TABLE `exchangein`
  ADD CONSTRAINT `FK366E9E883824C16C` FOREIGN KEY (`CatalogedByID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK366E9E885327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK366E9E887699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK366E9E8897C961D8` FOREIGN KEY (`DivisionID`) REFERENCES `division` (`UserGroupScopeId`),
  ADD CONSTRAINT `FK366E9E88DC8B4810` FOREIGN KEY (`AddressOfRecordID`) REFERENCES `addressofrecord` (`AddressOfRecordID`),
  ADD CONSTRAINT `FK366E9E88F77B069B` FOREIGN KEY (`ReceivedFromOrganizationID`) REFERENCES `agent` (`AgentID`);

--
-- Contraintes pour la table `exchangeinprep`
--
ALTER TABLE `exchangeinprep`
  ADD CONSTRAINT `FK9A0BCB518627F06` FOREIGN KEY (`PreparationID`) REFERENCES `preparation` (`PreparationID`),
  ADD CONSTRAINT `FK9A0BCB51E18122E` FOREIGN KEY (`ExchangeInID`) REFERENCES `exchangein` (`ExchangeInID`),
  ADD CONSTRAINT `FK9A0BCB54CE675DE` FOREIGN KEY (`DisciplineID`) REFERENCES `discipline` (`UserGroupScopeId`),
  ADD CONSTRAINT `FK9A0BCB55327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK9A0BCB57699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`);

--
-- Contraintes pour la table `exchangeout`
--
ALTER TABLE `exchangeout`
  ADD CONSTRAINT `FK97654A4B3824C16C` FOREIGN KEY (`CatalogedByID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK97654A4B5327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK97654A4B7699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK97654A4B97C961D8` FOREIGN KEY (`DivisionID`) REFERENCES `division` (`UserGroupScopeId`),
  ADD CONSTRAINT `FK97654A4BA21647A3` FOREIGN KEY (`SentToOrganizationID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK97654A4BDC8B4810` FOREIGN KEY (`AddressOfRecordID`) REFERENCES `addressofrecord` (`AddressOfRecordID`);

--
-- Contraintes pour la table `exchangeoutprep`
--
ALTER TABLE `exchangeoutprep`
  ADD CONSTRAINT `FK7405CEF818627F06` FOREIGN KEY (`PreparationID`) REFERENCES `preparation` (`PreparationID`),
  ADD CONSTRAINT `FK7405CEF84CE675DE` FOREIGN KEY (`DisciplineID`) REFERENCES `discipline` (`UserGroupScopeId`),
  ADD CONSTRAINT `FK7405CEF85327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK7405CEF87699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK7405CEF8A542314E` FOREIGN KEY (`ExchangeOutID`) REFERENCES `exchangeout` (`ExchangeOutID`);

--
-- Contraintes pour la table `exsiccata`
--
ALTER TABLE `exsiccata`
  ADD CONSTRAINT `FKACC7DD855327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKACC7DD8569734F30` FOREIGN KEY (`ReferenceWorkID`) REFERENCES `referencework` (`ReferenceWorkID`),
  ADD CONSTRAINT `FKACC7DD857699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`);

--
-- Contraintes pour la table `exsiccataitem`
--
ALTER TABLE `exsiccataitem`
  ADD CONSTRAINT `FK23150E183B4364A2` FOREIGN KEY (`ExsiccataID`) REFERENCES `exsiccata` (`ExsiccataID`),
  ADD CONSTRAINT `FK23150E185327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK23150E1875E37458` FOREIGN KEY (`CollectionObjectID`) REFERENCES `collectionobject` (`CollectionObjectID`),
  ADD CONSTRAINT `FK23150E187699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`);

--
-- Contraintes pour la table `fieldnotebook`
--
ALTER TABLE `fieldnotebook`
  ADD CONSTRAINT `FK4647A8D5384B3622` FOREIGN KEY (`AgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK4647A8D54CE675DE` FOREIGN KEY (`DisciplineID`) REFERENCES `discipline` (`UserGroupScopeId`),
  ADD CONSTRAINT `FK4647A8D55327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK4647A8D57699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK4647A8D58C2288BA` FOREIGN KEY (`CollectionID`) REFERENCES `collection` (`UserGroupScopeId`);

--
-- Contraintes pour la table `fieldnotebookattachment`
--
ALTER TABLE `fieldnotebookattachment`
  ADD CONSTRAINT `FKDC15BBB85327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKDC15BBB87699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKDC15BBB8B522A4E2` FOREIGN KEY (`FieldNotebookID`) REFERENCES `fieldnotebook` (`FieldNotebookID`),
  ADD CONSTRAINT `FKDC15BBB8C7E55084` FOREIGN KEY (`AttachmentID`) REFERENCES `attachment` (`AttachmentID`);

--
-- Contraintes pour la table `fieldnotebookpage`
--
ALTER TABLE `fieldnotebookpage`
  ADD CONSTRAINT `FK162198E44CE675DE` FOREIGN KEY (`DisciplineID`) REFERENCES `discipline` (`UserGroupScopeId`),
  ADD CONSTRAINT `FK162198E45327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK162198E47699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK162198E49B34BD5A` FOREIGN KEY (`FieldNotebookPageSetID`) REFERENCES `fieldnotebookpageset` (`FieldNotebookPageSetID`);

--
-- Contraintes pour la table `fieldnotebookpageattachment`
--
ALTER TABLE `fieldnotebookpageattachment`
  ADD CONSTRAINT `FK91AA25075327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK91AA250773BF3AE0` FOREIGN KEY (`FieldNotebookPageID`) REFERENCES `fieldnotebookpage` (`FieldNotebookPageID`),
  ADD CONSTRAINT `FK91AA25077699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK91AA2507C7E55084` FOREIGN KEY (`AttachmentID`) REFERENCES `attachment` (`AttachmentID`);

--
-- Contraintes pour la table `fieldnotebookpageset`
--
ALTER TABLE `fieldnotebookpageset`
  ADD CONSTRAINT `FK6FC0C8FE384B3622` FOREIGN KEY (`AgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK6FC0C8FE4CE675DE` FOREIGN KEY (`DisciplineID`) REFERENCES `discipline` (`UserGroupScopeId`),
  ADD CONSTRAINT `FK6FC0C8FE5327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK6FC0C8FE7699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK6FC0C8FEB522A4E2` FOREIGN KEY (`FieldNotebookID`) REFERENCES `fieldnotebook` (`FieldNotebookID`);

--
-- Contraintes pour la table `fieldnotebookpagesetattachment`
--
ALTER TABLE `fieldnotebookpagesetattachment`
  ADD CONSTRAINT `FKB1477CA15327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKB1477CA17699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKB1477CA19B34BD5A` FOREIGN KEY (`FieldNotebookPageSetID`) REFERENCES `fieldnotebookpageset` (`FieldNotebookPageSetID`),
  ADD CONSTRAINT `FKB1477CA1C7E55084` FOREIGN KEY (`AttachmentID`) REFERENCES `attachment` (`AttachmentID`);

--
-- Contraintes pour la table `fundingagent`
--
ALTER TABLE `fundingagent`
  ADD CONSTRAINT `FKB2AD628384B3622` FOREIGN KEY (`AgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKB2AD6285327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKB2AD628697B3F98` FOREIGN KEY (`CollectingTripID`) REFERENCES `collectingtrip` (`CollectingTripID`),
  ADD CONSTRAINT `FKB2AD6287699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKB2AD62897C961D8` FOREIGN KEY (`DivisionID`) REFERENCES `division` (`UserGroupScopeId`);

--
-- Contraintes pour la table `geocoorddetail`
--
ALTER TABLE `geocoorddetail`
  ADD CONSTRAINT `FKB688EB95384B3622` FOREIGN KEY (`AgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKB688EB955327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKB688EB957699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKB688EB9580202F05` FOREIGN KEY (`CompiledByID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKB688EB95A666A5C4` FOREIGN KEY (`LocalityID`) REFERENCES `locality` (`LocalityID`);

--
-- Contraintes pour la table `geography`
--
ALTER TABLE `geography`
  ADD CONSTRAINT `FK496A777C5327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK496A777C7699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK496A777C83AAF47E` FOREIGN KEY (`ParentID`) REFERENCES `geography` (`GeographyID`),
  ADD CONSTRAINT `FK496A777CBF9C9714` FOREIGN KEY (`GeographyTreeDefID`) REFERENCES `geographytreedef` (`GeographyTreeDefID`),
  ADD CONSTRAINT `FK496A777CE3C6E41A` FOREIGN KEY (`GeographyTreeDefItemID`) REFERENCES `geographytreedefitem` (`GeographyTreeDefItemID`),
  ADD CONSTRAINT `FK496A777CF484C03B` FOREIGN KEY (`AcceptedID`) REFERENCES `geography` (`GeographyID`);

--
-- Contraintes pour la table `geographytreedef`
--
ALTER TABLE `geographytreedef`
  ADD CONSTRAINT `FKE8DD68AB5327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKE8DD68AB7699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`);

--
-- Contraintes pour la table `geographytreedefitem`
--
ALTER TABLE `geographytreedefitem`
  ADD CONSTRAINT `FKF584963E5327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKF584963E7699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKF584963EA1F648D9` FOREIGN KEY (`ParentItemID`) REFERENCES `geographytreedefitem` (`GeographyTreeDefItemID`),
  ADD CONSTRAINT `FKF584963EBF9C9714` FOREIGN KEY (`GeographyTreeDefID`) REFERENCES `geographytreedef` (`GeographyTreeDefID`);

--
-- Contraintes pour la table `geologictimeperiod`
--
ALTER TABLE `geologictimeperiod`
  ADD CONSTRAINT `FKA2A8513B523E3360` FOREIGN KEY (`AcceptedID`) REFERENCES `geologictimeperiod` (`GeologicTimePeriodID`),
  ADD CONSTRAINT `FKA2A8513B5327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKA2A8513B7699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKA2A8513B9988ED70` FOREIGN KEY (`GeologicTimePeriodTreeDefID`) REFERENCES `geologictimeperiodtreedef` (`GeologicTimePeriodTreeDefID`),
  ADD CONSTRAINT `FKA2A8513BA8A8AC76` FOREIGN KEY (`GeologicTimePeriodTreeDefItemID`) REFERENCES `geologictimeperiodtreedefitem` (`GeologicTimePeriodTreeDefItemID`),
  ADD CONSTRAINT `FKA2A8513BE16467A3` FOREIGN KEY (`ParentID`) REFERENCES `geologictimeperiod` (`GeologicTimePeriodID`);

--
-- Contraintes pour la table `geologictimeperiodtreedef`
--
ALTER TABLE `geologictimeperiodtreedef`
  ADD CONSTRAINT `FK8109EA0C5327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK8109EA0C7699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`);

--
-- Contraintes pour la table `geologictimeperiodtreedefitem`
--
ALTER TABLE `geologictimeperiodtreedefitem`
  ADD CONSTRAINT `FKB6DF7F1F5327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKB6DF7F1F7699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKB6DF7F1F9093DC94` FOREIGN KEY (`ParentItemID`) REFERENCES `geologictimeperiodtreedefitem` (`GeologicTimePeriodTreeDefItemID`),
  ADD CONSTRAINT `FKB6DF7F1F9988ED70` FOREIGN KEY (`GeologicTimePeriodTreeDefID`) REFERENCES `geologictimeperiodtreedef` (`GeologicTimePeriodTreeDefID`);

--
-- Contraintes pour la table `gift`
--
ALTER TABLE `gift`
  ADD CONSTRAINT `FK3069304CE675DE` FOREIGN KEY (`DisciplineID`) REFERENCES `discipline` (`UserGroupScopeId`),
  ADD CONSTRAINT `FK3069305327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK3069307699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK30693097C961D8` FOREIGN KEY (`DivisionID`) REFERENCES `division` (`UserGroupScopeId`),
  ADD CONSTRAINT `FK306930DC8B4810` FOREIGN KEY (`AddressOfRecordID`) REFERENCES `addressofrecord` (`AddressOfRecordID`);

--
-- Contraintes pour la table `giftagent`
--
ALTER TABLE `giftagent`
  ADD CONSTRAINT `FK221917D5384B3622` FOREIGN KEY (`AgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK221917D54CE675DE` FOREIGN KEY (`DisciplineID`) REFERENCES `discipline` (`UserGroupScopeId`),
  ADD CONSTRAINT `FK221917D55327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK221917D57699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK221917D59890879E` FOREIGN KEY (`GiftID`) REFERENCES `gift` (`GiftID`);

--
-- Contraintes pour la table `giftattachment`
--
ALTER TABLE `giftattachment`
  ADD CONSTRAINT `FKC75A06535327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKC75A06537699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKC75A06539890879E` FOREIGN KEY (`GiftID`) REFERENCES `gift` (`GiftID`),
  ADD CONSTRAINT `FKC75A0653C7E55084` FOREIGN KEY (`AttachmentID`) REFERENCES `attachment` (`AttachmentID`);

--
-- Contraintes pour la table `giftpreparation`
--
ALTER TABLE `giftpreparation`
  ADD CONSTRAINT `FK18B1F6718627F06` FOREIGN KEY (`PreparationID`) REFERENCES `preparation` (`PreparationID`),
  ADD CONSTRAINT `FK18B1F674CE675DE` FOREIGN KEY (`DisciplineID`) REFERENCES `discipline` (`UserGroupScopeId`),
  ADD CONSTRAINT `FK18B1F675327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK18B1F677699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK18B1F679890879E` FOREIGN KEY (`GiftID`) REFERENCES `gift` (`GiftID`);

--
-- Contraintes pour la table `groupperson`
--
ALTER TABLE `groupperson`
  ADD CONSTRAINT `FK5DEB769450D2EC77` FOREIGN KEY (`MemberID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK5DEB76945327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK5DEB76947699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK5DEB76948905F31C` FOREIGN KEY (`GroupID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK5DEB769497C961D8` FOREIGN KEY (`DivisionID`) REFERENCES `division` (`UserGroupScopeId`);

--
-- Contraintes pour la table `inforequest`
--
ALTER TABLE `inforequest`
  ADD CONSTRAINT `FK68918E21384B3622` FOREIGN KEY (`AgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK68918E215327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK68918E217699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`);

--
-- Contraintes pour la table `institution`
--
ALTER TABLE `institution`
  ADD CONSTRAINT `FK3529A5B853C7EFD6` FOREIGN KEY (`StorageTreeDefID`) REFERENCES `storagetreedef` (`StorageTreeDefID`),
  ADD CONSTRAINT `FK3529A5B8E6A64D00` FOREIGN KEY (`AddressID`) REFERENCES `address` (`AddressID`),
  ADD CONSTRAINT `FK3D0021605327F9423529a5b8` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK3D0021607699B0033529a5b8` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`);

--
-- Contraintes pour la table `institutionnetwork`
--
ALTER TABLE `institutionnetwork`
  ADD CONSTRAINT `FK945C55765327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK945C55767699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK945C5576E6A64D00` FOREIGN KEY (`AddressID`) REFERENCES `address` (`AddressID`);

--
-- Contraintes pour la table `journal`
--
ALTER TABLE `journal`
  ADD CONSTRAINT `FKAB64AF375327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKAB64AF377699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKAB64AF3781223908` FOREIGN KEY (`InstitutionID`) REFERENCES `institution` (`UserGroupScopeId`);

--
-- Contraintes pour la table `latlonpolygon`
--
ALTER TABLE `latlonpolygon`
  ADD CONSTRAINT `FKE4EEDE6E2583AF6E` FOREIGN KEY (`SpVisualQueryID`) REFERENCES `spvisualquery` (`SpVisualQueryID`),
  ADD CONSTRAINT `FKE4EEDE6E5327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKE4EEDE6E7699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKE4EEDE6EA666A5C4` FOREIGN KEY (`LocalityID`) REFERENCES `locality` (`LocalityID`);

--
-- Contraintes pour la table `latlonpolygonpnt`
--
ALTER TABLE `latlonpolygonpnt`
  ADD CONSTRAINT `FK31701508BBAA1DB4` FOREIGN KEY (`LatLonPolygonID`) REFERENCES `latlonpolygon` (`LatLonPolygonID`);

--
-- Contraintes pour la table `lithostrat`
--
ALTER TABLE `lithostrat`
  ADD CONSTRAINT `FK329297065327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK3292970672939D3A` FOREIGN KEY (`LithoStratTreeDefID`) REFERENCES `lithostrattreedef` (`LithoStratTreeDefID`),
  ADD CONSTRAINT `FK329297067699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK329297067A1D53CB` FOREIGN KEY (`AcceptedID`) REFERENCES `lithostrat` (`LithoStratID`),
  ADD CONSTRAINT `FK32929706943880E` FOREIGN KEY (`ParentID`) REFERENCES `lithostrat` (`LithoStratID`),
  ADD CONSTRAINT `FK3292970699E26740` FOREIGN KEY (`LithoStratTreeDefItemID`) REFERENCES `lithostrattreedefitem` (`LithoStratTreeDefItemID`);

--
-- Contraintes pour la table `lithostrattreedef`
--
ALTER TABLE `lithostrattreedef`
  ADD CONSTRAINT `FK268699E15327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK268699E17699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`);

--
-- Contraintes pour la table `lithostrattreedefitem`
--
ALTER TABLE `lithostrattreedefitem`
  ADD CONSTRAINT `FKEC263C745327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKEC263C7472939D3A` FOREIGN KEY (`LithoStratTreeDefID`) REFERENCES `lithostrattreedef` (`LithoStratTreeDefID`),
  ADD CONSTRAINT `FKEC263C747699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKEC263C748340DB49` FOREIGN KEY (`ParentItemID`) REFERENCES `lithostrattreedefitem` (`LithoStratTreeDefItemID`);

--
-- Contraintes pour la table `loan`
--
ALTER TABLE `loan`
  ADD CONSTRAINT `FK32C4F04CE675DE` FOREIGN KEY (`DisciplineID`) REFERENCES `discipline` (`UserGroupScopeId`),
  ADD CONSTRAINT `FK32C4F05327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK32C4F07699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK32C4F097C961D8` FOREIGN KEY (`DivisionID`) REFERENCES `division` (`UserGroupScopeId`),
  ADD CONSTRAINT `FK32C4F0DC8B4810` FOREIGN KEY (`AddressOfRecordID`) REFERENCES `addressofrecord` (`AddressOfRecordID`);

--
-- Contraintes pour la table `loanagent`
--
ALTER TABLE `loanagent`
  ADD CONSTRAINT `FK63FA1415384B3622` FOREIGN KEY (`AgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK63FA14154CE675DE` FOREIGN KEY (`DisciplineID`) REFERENCES `discipline` (`UserGroupScopeId`),
  ADD CONSTRAINT `FK63FA14155327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK63FA14157699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK63FA1415A16D4F1E` FOREIGN KEY (`LoanID`) REFERENCES `loan` (`LoanID`);

--
-- Contraintes pour la table `loanattachment`
--
ALTER TABLE `loanattachment`
  ADD CONSTRAINT `FK23ECB2135327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK23ECB2137699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK23ECB213A16D4F1E` FOREIGN KEY (`LoanID`) REFERENCES `loan` (`LoanID`),
  ADD CONSTRAINT `FK23ECB213C7E55084` FOREIGN KEY (`AttachmentID`) REFERENCES `attachment` (`AttachmentID`);

--
-- Contraintes pour la table `loanpreparation`
--
ALTER TABLE `loanpreparation`
  ADD CONSTRAINT `FK374DEBA718627F06` FOREIGN KEY (`PreparationID`) REFERENCES `preparation` (`PreparationID`),
  ADD CONSTRAINT `FK374DEBA74CE675DE` FOREIGN KEY (`DisciplineID`) REFERENCES `discipline` (`UserGroupScopeId`),
  ADD CONSTRAINT `FK374DEBA75327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK374DEBA77699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK374DEBA7A16D4F1E` FOREIGN KEY (`LoanID`) REFERENCES `loan` (`LoanID`);

--
-- Contraintes pour la table `loanreturnpreparation`
--
ALTER TABLE `loanreturnpreparation`
  ADD CONSTRAINT `FK3632847749C90455` FOREIGN KEY (`ReceivedByID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK363284774CE675DE` FOREIGN KEY (`DisciplineID`) REFERENCES `discipline` (`UserGroupScopeId`),
  ADD CONSTRAINT `FK363284775327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK363284777699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK36328477CD552686` FOREIGN KEY (`LoanPreparationID`) REFERENCES `loanpreparation` (`LoanPreparationID`),
  ADD CONSTRAINT `FK36328477EF0E7D46` FOREIGN KEY (`DeaccessionPreparationID`) REFERENCES `deaccessionpreparation` (`DeaccessionPreparationID`);

--
-- Contraintes pour la table `locality`
--
ALTER TABLE `locality`
  ADD CONSTRAINT `FK714BFD634CE675DE` FOREIGN KEY (`DisciplineID`) REFERENCES `discipline` (`UserGroupScopeId`),
  ADD CONSTRAINT `FK714BFD635327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK714BFD637699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK714BFD637BF1F70B` FOREIGN KEY (`VisibilitySetByID`) REFERENCES `specifyuser` (`SpecifyUserID`),
  ADD CONSTRAINT `FK714BFD6397ECD2B2` FOREIGN KEY (`PaleoContextID`) REFERENCES `paleocontext` (`PaleoContextID`),
  ADD CONSTRAINT `FK714BFD63D649F6D0` FOREIGN KEY (`GeographyID`) REFERENCES `geography` (`GeographyID`);

--
-- Contraintes pour la table `localityattachment`
--
ALTER TABLE `localityattachment`
  ADD CONSTRAINT `FKB39C36C65327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKB39C36C67699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKB39C36C6A666A5C4` FOREIGN KEY (`LocalityID`) REFERENCES `locality` (`LocalityID`),
  ADD CONSTRAINT `FKB39C36C6C7E55084` FOREIGN KEY (`AttachmentID`) REFERENCES `attachment` (`AttachmentID`);

--
-- Contraintes pour la table `localitycitation`
--
ALTER TABLE `localitycitation`
  ADD CONSTRAINT `FK9877F54A4CE675DE` FOREIGN KEY (`DisciplineID`) REFERENCES `discipline` (`UserGroupScopeId`),
  ADD CONSTRAINT `FK9877F54A5327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK9877F54A69734F30` FOREIGN KEY (`ReferenceWorkID`) REFERENCES `referencework` (`ReferenceWorkID`),
  ADD CONSTRAINT `FK9877F54A7699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK9877F54AA666A5C4` FOREIGN KEY (`LocalityID`) REFERENCES `locality` (`LocalityID`);

--
-- Contraintes pour la table `localitydetail`
--
ALTER TABLE `localitydetail`
  ADD CONSTRAINT `FKBB0D3F745327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKBB0D3F747699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKBB0D3F74A666A5C4` FOREIGN KEY (`LocalityID`) REFERENCES `locality` (`LocalityID`);

--
-- Contraintes pour la table `localitynamealias`
--
ALTER TABLE `localitynamealias`
  ADD CONSTRAINT `FK29EB5CA24CE675DE` FOREIGN KEY (`DisciplineID`) REFERENCES `discipline` (`UserGroupScopeId`),
  ADD CONSTRAINT `FK29EB5CA25327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK29EB5CA27699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK29EB5CA2A666A5C4` FOREIGN KEY (`LocalityID`) REFERENCES `locality` (`LocalityID`);

--
-- Contraintes pour la table `materialsample`
--
ALTER TABLE `materialsample`
  ADD CONSTRAINT `FKD5CE219118627F06` FOREIGN KEY (`PreparationID`) REFERENCES `preparation` (`PreparationID`),
  ADD CONSTRAINT `FKD5CE21915327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKD5CE21917699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`);

--
-- Contraintes pour la table `morphbankview`
--
ALTER TABLE `morphbankview`
  ADD CONSTRAINT `FKDED66BE95327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKDED66BE97699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`);

--
-- Contraintes pour la table `otheridentifier`
--
ALTER TABLE `otheridentifier`
  ADD CONSTRAINT `FK2A5397B95327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK2A5397B975E37458` FOREIGN KEY (`CollectionObjectID`) REFERENCES `collectionobject` (`CollectionObjectID`),
  ADD CONSTRAINT `FK2A5397B97699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`);

--
-- Contraintes pour la table `paleocontext`
--
ALTER TABLE `paleocontext`
  ADD CONSTRAINT `FK99B5438A1D72DA20` FOREIGN KEY (`ChronosStratEndID`) REFERENCES `geologictimeperiod` (`GeologicTimePeriodID`),
  ADD CONSTRAINT `FK99B5438A4CE675DE` FOREIGN KEY (`DisciplineID`) REFERENCES `discipline` (`UserGroupScopeId`),
  ADD CONSTRAINT `FK99B5438A50D2926D` FOREIGN KEY (`ChronosStratID`) REFERENCES `geologictimeperiod` (`GeologicTimePeriodID`),
  ADD CONSTRAINT `FK99B5438A5327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK99B5438A7699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK99B5438A89FD3495` FOREIGN KEY (`BioStratID`) REFERENCES `geologictimeperiod` (`GeologicTimePeriodID`),
  ADD CONSTRAINT `FK99B5438A9B80EF6A` FOREIGN KEY (`LithoStratID`) REFERENCES `lithostrat` (`LithoStratID`);

--
-- Contraintes pour la table `permit`
--
ALTER TABLE `permit`
  ADD CONSTRAINT `FKC4E3841B5327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKC4E3841B7699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKC4E3841B81223908` FOREIGN KEY (`InstitutionID`) REFERENCES `institution` (`UserGroupScopeId`),
  ADD CONSTRAINT `FKC4E3841BCDCF181F` FOREIGN KEY (`IssuedByID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKC4E3841BCDD72143` FOREIGN KEY (`IssuedToID`) REFERENCES `agent` (`AgentID`);

--
-- Contraintes pour la table `permitattachment`
--
ALTER TABLE `permitattachment`
  ADD CONSTRAINT `FK7064B77E5327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK7064B77E7699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK7064B77EAD1F31F4` FOREIGN KEY (`PermitID`) REFERENCES `permit` (`PermitID`),
  ADD CONSTRAINT `FK7064B77EC7E55084` FOREIGN KEY (`AttachmentID`) REFERENCES `attachment` (`AttachmentID`);

--
-- Contraintes pour la table `picklist`
--
ALTER TABLE `picklist`
  ADD CONSTRAINT `FKD3F8383F5327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKD3F8383F7699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKD3F8383F8C2288BA` FOREIGN KEY (`CollectionID`) REFERENCES `collection` (`UserGroupScopeId`);

--
-- Contraintes pour la table `picklistitem`
--
ALTER TABLE `picklistitem`
  ADD CONSTRAINT `FK30C57BD25327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK30C57BD2718D489C` FOREIGN KEY (`PickListID`) REFERENCES `picklist` (`PickListID`),
  ADD CONSTRAINT `FK30C57BD27699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`);

--
-- Contraintes pour la table `preparation`
--
ALTER TABLE `preparation`
  ADD CONSTRAINT `FKB198269745F8D1A8` FOREIGN KEY (`PreparationAttributeID`) REFERENCES `preparationattribute` (`PreparationAttributeID`),
  ADD CONSTRAINT `FKB19826975327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKB19826976E8973EC` FOREIGN KEY (`PrepTypeID`) REFERENCES `preptype` (`PrepTypeID`),
  ADD CONSTRAINT `FKB198269775E37458` FOREIGN KEY (`CollectionObjectID`) REFERENCES `collectionobject` (`CollectionObjectID`),
  ADD CONSTRAINT `FKB19826977699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKB1982697EB48144E` FOREIGN KEY (`StorageID`) REFERENCES `storage` (`StorageID`),
  ADD CONSTRAINT `FKB1982697FEE420B1` FOREIGN KEY (`PreparedByID`) REFERENCES `agent` (`AgentID`);

--
-- Contraintes pour la table `preparationattachment`
--
ALTER TABLE `preparationattachment`
  ADD CONSTRAINT `FKE3FD6EFA18627F06` FOREIGN KEY (`PreparationID`) REFERENCES `preparation` (`PreparationID`),
  ADD CONSTRAINT `FKE3FD6EFA5327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKE3FD6EFA7699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKE3FD6EFAC7E55084` FOREIGN KEY (`AttachmentID`) REFERENCES `attachment` (`AttachmentID`);

--
-- Contraintes pour la table `preparationattr`
--
ALTER TABLE `preparationattr`
  ADD CONSTRAINT `FK4592DD0818627F06` FOREIGN KEY (`PreparationId`) REFERENCES `preparation` (`PreparationID`),
  ADD CONSTRAINT `FK4592DD085327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK4592DD087699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK4592DD08E84BA7B0` FOREIGN KEY (`AttributeDefID`) REFERENCES `attributedef` (`AttributeDefID`);

--
-- Contraintes pour la table `preparationattribute`
--
ALTER TABLE `preparationattribute`
  ADD CONSTRAINT `FK984BFDE55327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK984BFDE57699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`);

--
-- Contraintes pour la table `preptype`
--
ALTER TABLE `preptype`
  ADD CONSTRAINT `FKB3C452E75327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKB3C452E77699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKB3C452E78C2288BA` FOREIGN KEY (`CollectionID`) REFERENCES `collection` (`UserGroupScopeId`);

--
-- Contraintes pour la table `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `FKED904B195327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKED904B195DDECE9` FOREIGN KEY (`ProjectAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKED904B197699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`);

--
-- Contraintes pour la table `project_colobj`
--
ALTER TABLE `project_colobj`
  ADD CONSTRAINT `FK1E416F5D75E37458` FOREIGN KEY (`CollectionObjectID`) REFERENCES `collectionobject` (`CollectionObjectID`),
  ADD CONSTRAINT `FK1E416F5DAF28760A` FOREIGN KEY (`ProjectID`) REFERENCES `project` (`ProjectID`);

--
-- Contraintes pour la table `recordset`
--
ALTER TABLE `recordset`
  ADD CONSTRAINT `FK3B38A27110D22B7A` FOREIGN KEY (`InfoRequestID`) REFERENCES `inforequest` (`InfoRequestID`),
  ADD CONSTRAINT `FK3B38A2714BDD9E10` FOREIGN KEY (`SpecifyUserID`) REFERENCES `specifyuser` (`SpecifyUserID`),
  ADD CONSTRAINT `FK3B38A2715327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK3B38A2717699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK3B38A27199A7381A` FOREIGN KEY (`SpPrincipalID`) REFERENCES `spprincipal` (`SpPrincipalID`);

--
-- Contraintes pour la table `recordsetitem`
--
ALTER TABLE `recordsetitem`
  ADD CONSTRAINT `FKD0817D047F06EB5A` FOREIGN KEY (`RecordSetID`) REFERENCES `recordset` (`RecordSetID`);

--
-- Contraintes pour la table `referencework`
--
ALTER TABLE `referencework`
  ADD CONSTRAINT `FK5F7C68DC1B806665` FOREIGN KEY (`ContainedRFParentID`) REFERENCES `referencework` (`ReferenceWorkID`),
  ADD CONSTRAINT `FK5F7C68DC5327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK5F7C68DC748AEC6` FOREIGN KEY (`JournalID`) REFERENCES `journal` (`JournalID`),
  ADD CONSTRAINT `FK5F7C68DC7699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK5F7C68DC81223908` FOREIGN KEY (`InstitutionID`) REFERENCES `institution` (`UserGroupScopeId`);

--
-- Contraintes pour la table `referenceworkattachment`
--
ALTER TABLE `referenceworkattachment`
  ADD CONSTRAINT `FK9C9B5EFF5327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK9C9B5EFF69734F30` FOREIGN KEY (`ReferenceWorkID`) REFERENCES `referencework` (`ReferenceWorkID`),
  ADD CONSTRAINT `FK9C9B5EFF7699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK9C9B5EFFC7E55084` FOREIGN KEY (`AttachmentID`) REFERENCES `attachment` (`AttachmentID`);

--
-- Contraintes pour la table `repositoryagreement`
--
ALTER TABLE `repositoryagreement`
  ADD CONSTRAINT `FKA5A38A00384B3622` FOREIGN KEY (`AgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKA5A38A005327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKA5A38A007699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKA5A38A0097C961D8` FOREIGN KEY (`DivisionID`) REFERENCES `division` (`UserGroupScopeId`),
  ADD CONSTRAINT `FKA5A38A00DC8B4810` FOREIGN KEY (`AddressOfRecordID`) REFERENCES `addressofrecord` (`AddressOfRecordID`);

--
-- Contraintes pour la table `repositoryagreementattachment`
--
ALTER TABLE `repositoryagreementattachment`
  ADD CONSTRAINT `FK93663233EBC6278` FOREIGN KEY (`RepositoryAgreementID`) REFERENCES `repositoryagreement` (`RepositoryAgreementID`),
  ADD CONSTRAINT `FK93663235327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK93663237699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK9366323C7E55084` FOREIGN KEY (`AttachmentID`) REFERENCES `attachment` (`AttachmentID`);

--
-- Contraintes pour la table `sgrbatchmatchresultitem`
--
ALTER TABLE `sgrbatchmatchresultitem`
  ADD CONSTRAINT `sgrbatchmatchresultitemfk1` FOREIGN KEY (`batchMatchResultSetId`) REFERENCES `sgrbatchmatchresultset` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sgrbatchmatchresultset`
--
ALTER TABLE `sgrbatchmatchresultset`
  ADD CONSTRAINT `sgrbatchmatchresultsetfk2` FOREIGN KEY (`matchConfigurationId`) REFERENCES `sgrmatchconfiguration` (`id`);

--
-- Contraintes pour la table `shipment`
--
ALTER TABLE `shipment`
  ADD CONSTRAINT `FKE139719A4CE675DE` FOREIGN KEY (`DisciplineID`) REFERENCES `discipline` (`UserGroupScopeId`),
  ADD CONSTRAINT `FKE139719A5327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKE139719A7699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKE139719A9890879E` FOREIGN KEY (`GiftID`) REFERENCES `gift` (`GiftID`),
  ADD CONSTRAINT `FKE139719AA16D4F1E` FOREIGN KEY (`LoanID`) REFERENCES `loan` (`LoanID`),
  ADD CONSTRAINT `FKE139719AA542314E` FOREIGN KEY (`ExchangeOutID`) REFERENCES `exchangeout` (`ExchangeOutID`),
  ADD CONSTRAINT `FKE139719AB172EEC7` FOREIGN KEY (`ShippedByID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKE139719AB17AF7EB` FOREIGN KEY (`ShippedToID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKE139719ABDA7A97E` FOREIGN KEY (`ShipperID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKE139719AF8BF6F28` FOREIGN KEY (`BorrowID`) REFERENCES `borrow` (`BorrowID`);

--
-- Contraintes pour la table `spappresource`
--
ALTER TABLE `spappresource`
  ADD CONSTRAINT `FK96F9D2B21A0B1F14` FOREIGN KEY (`SpAppResourceDirID`) REFERENCES `spappresourcedir` (`SpAppResourceDirID`),
  ADD CONSTRAINT `FK96F9D2B24BDD9E10` FOREIGN KEY (`SpecifyUserID`) REFERENCES `specifyuser` (`SpecifyUserID`),
  ADD CONSTRAINT `FK96F9D2B25327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK96F9D2B27699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK96F9D2B299A7381A` FOREIGN KEY (`SpPrincipalID`) REFERENCES `spprincipal` (`SpPrincipalID`);

--
-- Contraintes pour la table `spappresourcedata`
--
ALTER TABLE `spappresourcedata`
  ADD CONSTRAINT `FKBBC195C490F514C` FOREIGN KEY (`SpViewSetObjID`) REFERENCES `spviewsetobj` (`SpViewSetObjID`),
  ADD CONSTRAINT `FKBBC195C5327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKBBC195C560D9D3C` FOREIGN KEY (`SpAppResourceID`) REFERENCES `spappresource` (`SpAppResourceID`),
  ADD CONSTRAINT `FKBBC195C7699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`);

--
-- Contraintes pour la table `spappresourcedir`
--
ALTER TABLE `spappresourcedir`
  ADD CONSTRAINT `FK3A2F5C9B4BDD9E10` FOREIGN KEY (`SpecifyUserID`) REFERENCES `specifyuser` (`SpecifyUserID`),
  ADD CONSTRAINT `FK3A2F5C9B4CE675DE` FOREIGN KEY (`DisciplineID`) REFERENCES `discipline` (`UserGroupScopeId`),
  ADD CONSTRAINT `FK3A2F5C9B5327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK3A2F5C9B7699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK3A2F5C9B8C2288BA` FOREIGN KEY (`CollectionID`) REFERENCES `collection` (`UserGroupScopeId`);

--
-- Contraintes pour la table `spauditlog`
--
ALTER TABLE `spauditlog`
  ADD CONSTRAINT `FKD51C16E65327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKD51C16E67699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`);

--
-- Contraintes pour la table `spauditlogfield`
--
ALTER TABLE `spauditlogfield`
  ADD CONSTRAINT `FK154AE9D45327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK154AE9D469D0534A` FOREIGN KEY (`SpAuditLogID`) REFERENCES `spauditlog` (`SpAuditLogID`),
  ADD CONSTRAINT `FK154AE9D47699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`);

--
-- Contraintes pour la table `specifyuser`
--
ALTER TABLE `specifyuser`
  ADD CONSTRAINT `FKD54E94AC5327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKD54E94AC7699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`);

--
-- Contraintes pour la table `specifyuser_spprincipal`
--
ALTER TABLE `specifyuser_spprincipal`
  ADD CONSTRAINT `FK81E18B5E4BDD9E10` FOREIGN KEY (`SpecifyUserID`) REFERENCES `specifyuser` (`SpecifyUserID`),
  ADD CONSTRAINT `FK81E18B5E99A7381A` FOREIGN KEY (`SpPrincipalID`) REFERENCES `spprincipal` (`SpPrincipalID`);

--
-- Contraintes pour la table `spexportschema`
--
ALTER TABLE `spexportschema`
  ADD CONSTRAINT `FKD2861D324CE675DE` FOREIGN KEY (`DisciplineID`) REFERENCES `discipline` (`UserGroupScopeId`),
  ADD CONSTRAINT `FKD2861D325327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKD2861D327699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`);

--
-- Contraintes pour la table `spexportschemaitem`
--
ALTER TABLE `spexportschemaitem`
  ADD CONSTRAINT `FKBB21AF455327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKBB21AF455722A7A2` FOREIGN KEY (`SpExportSchemaID`) REFERENCES `spexportschema` (`SpExportSchemaID`),
  ADD CONSTRAINT `FKBB21AF45720CCEF2` FOREIGN KEY (`SpLocaleContainerItemID`) REFERENCES `splocalecontaineritem` (`SpLocaleContainerItemID`),
  ADD CONSTRAINT `FKBB21AF457699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`);

--
-- Contraintes pour la table `spexportschemaitemmapping`
--
ALTER TABLE `spexportschemaitemmapping`
  ADD CONSTRAINT `FKCD08A1E92957EC8B` FOREIGN KEY (`ExportSchemaItemID`) REFERENCES `spexportschemaitem` (`SpExportSchemaItemID`),
  ADD CONSTRAINT `FKCD08A1E92D3E491C` FOREIGN KEY (`SpQueryFieldID`) REFERENCES `spqueryfield` (`SpQueryFieldID`),
  ADD CONSTRAINT `FKCD08A1E95327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKCD08A1E97699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKCD08A1E9F7C8AAB0` FOREIGN KEY (`SpExportSchemaMappingID`) REFERENCES `spexportschemamapping` (`SpExportSchemaMappingID`);

--
-- Contraintes pour la table `spexportschemamapping`
--
ALTER TABLE `spexportschemamapping`
  ADD CONSTRAINT `FK68B61F5C5327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK68B61F5C7699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`);

--
-- Contraintes pour la table `spfieldvaluedefault`
--
ALTER TABLE `spfieldvaluedefault`
  ADD CONSTRAINT `FK14E6C4ED5327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK14E6C4ED7699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`);

--
-- Contraintes pour la table `splocalecontainer`
--
ALTER TABLE `splocalecontainer`
  ADD CONSTRAINT `FK3CC8F6A4CE675DE` FOREIGN KEY (`DisciplineID`) REFERENCES `discipline` (`UserGroupScopeId`),
  ADD CONSTRAINT `FK3CC8F6A5327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK3CC8F6A7699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`);

--
-- Contraintes pour la table `splocalecontaineritem`
--
ALTER TABLE `splocalecontaineritem`
  ADD CONSTRAINT `FK22F4457D5327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK22F4457D7699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK22F4457DC279ADEC` FOREIGN KEY (`SpLocaleContainerID`) REFERENCES `splocalecontainer` (`SpLocaleContainerID`);

--
-- Contraintes pour la table `splocaleitemstr`
--
ALTER TABLE `splocaleitemstr`
  ADD CONSTRAINT `FK4F03EF675327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK4F03EF677699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK4F03EF67AD36C73D` FOREIGN KEY (`SpLocaleContainerDescID`) REFERENCES `splocalecontainer` (`SpLocaleContainerID`),
  ADD CONSTRAINT `FK4F03EF67BE0C2CB7` FOREIGN KEY (`SpLocaleContainerNameID`) REFERENCES `splocalecontainer` (`SpLocaleContainerID`),
  ADD CONSTRAINT `FK4F03EF67E9D506C3` FOREIGN KEY (`SpLocaleContainerItemDescID`) REFERENCES `splocalecontaineritem` (`SpLocaleContainerItemID`),
  ADD CONSTRAINT `FK4F03EF67FAAA6C3D` FOREIGN KEY (`SpLocaleContainerItemNameID`) REFERENCES `splocalecontaineritem` (`SpLocaleContainerItemID`);

--
-- Contraintes pour la table `spprincipal`
--
ALTER TABLE `spprincipal`
  ADD CONSTRAINT `FK56DC3A715327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK56DC3A717699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`);

--
-- Contraintes pour la table `spprincipal_sppermission`
--
ALTER TABLE `spprincipal_sppermission`
  ADD CONSTRAINT `FK9DD8B2FA891F8736` FOREIGN KEY (`SpPermissionID`) REFERENCES `sppermission` (`SpPermissionID`),
  ADD CONSTRAINT `FK9DD8B2FA99A7381A` FOREIGN KEY (`SpPrincipalID`) REFERENCES `spprincipal` (`SpPrincipalID`);

--
-- Contraintes pour la table `spquery`
--
ALTER TABLE `spquery`
  ADD CONSTRAINT `FK88FA7C8B4BDD9E10` FOREIGN KEY (`SpecifyUserID`) REFERENCES `specifyuser` (`SpecifyUserID`),
  ADD CONSTRAINT `FK88FA7C8B5327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK88FA7C8B7699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`);

--
-- Contraintes pour la table `spqueryfield`
--
ALTER TABLE `spqueryfield`
  ADD CONSTRAINT `FK8F33434F5327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK8F33434F7699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK8F33434FB273544E` FOREIGN KEY (`SpQueryID`) REFERENCES `spquery` (`SpQueryID`);

--
-- Contraintes pour la table `spreport`
--
ALTER TABLE `spreport`
  ADD CONSTRAINT `FK972D69D12774AC79` FOREIGN KEY (`AppResourceID`) REFERENCES `spappresource` (`SpAppResourceID`),
  ADD CONSTRAINT `FK972D69D14BDD9E10` FOREIGN KEY (`SpecifyUserID`) REFERENCES `specifyuser` (`SpecifyUserID`),
  ADD CONSTRAINT `FK972D69D15327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK972D69D17699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK972D69D17F5EBA2A` FOREIGN KEY (`WorkbenchTemplateID`) REFERENCES `workbenchtemplate` (`WorkbenchTemplateID`),
  ADD CONSTRAINT `FK972D69D1B273544E` FOREIGN KEY (`SpQueryID`) REFERENCES `spquery` (`SpQueryID`);

--
-- Contraintes pour la table `spsymbiotainstance`
--
ALTER TABLE `spsymbiotainstance`
  ADD CONSTRAINT `FK95FF2A005327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK95FF2A007699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK95FF2A00E5409F21` FOREIGN KEY (`SchemaMappingID`) REFERENCES `spexportschemamapping` (`SpExportSchemaMappingID`);

--
-- Contraintes pour la table `sptasksemaphore`
--
ALTER TABLE `sptasksemaphore`
  ADD CONSTRAINT `FKF2333F224CE675DE` FOREIGN KEY (`DisciplineID`) REFERENCES `discipline` (`UserGroupScopeId`),
  ADD CONSTRAINT `FKF2333F2251039657` FOREIGN KEY (`OwnerID`) REFERENCES `specifyuser` (`SpecifyUserID`),
  ADD CONSTRAINT `FKF2333F225327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKF2333F227699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKF2333F228C2288BA` FOREIGN KEY (`CollectionID`) REFERENCES `collection` (`UserGroupScopeId`);

--
-- Contraintes pour la table `spversion`
--
ALTER TABLE `spversion`
  ADD CONSTRAINT `FK22369BDB5327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK22369BDB7699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`);

--
-- Contraintes pour la table `spviewsetobj`
--
ALTER TABLE `spviewsetobj`
  ADD CONSTRAINT `FK5FA666571A0B1F14` FOREIGN KEY (`SpAppResourceDirID`) REFERENCES `spappresourcedir` (`SpAppResourceDirID`),
  ADD CONSTRAINT `FK5FA666575327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK5FA666577699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`);

--
-- Contraintes pour la table `spvisualquery`
--
ALTER TABLE `spvisualquery`
  ADD CONSTRAINT `FK34BC5F0B4BDD9E10` FOREIGN KEY (`SpecifyUserID`) REFERENCES `specifyuser` (`SpecifyUserID`),
  ADD CONSTRAINT `FK34BC5F0B5327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK34BC5F0B7699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`);

--
-- Contraintes pour la table `sp_schema_mapping`
--
ALTER TABLE `sp_schema_mapping`
  ADD CONSTRAINT `FKC5EDFE525722A7A2` FOREIGN KEY (`SpExportSchemaID`) REFERENCES `spexportschema` (`SpExportSchemaID`),
  ADD CONSTRAINT `FKC5EDFE52F7C8AAB0` FOREIGN KEY (`SpExportSchemaMappingID`) REFERENCES `spexportschemamapping` (`SpExportSchemaMappingID`);

--
-- Contraintes pour la table `storage`
--
ALTER TABLE `storage`
  ADD CONSTRAINT `FK8FB0427B3D83D67A` FOREIGN KEY (`AcceptedID`) REFERENCES `storage` (`StorageID`),
  ADD CONSTRAINT `FK8FB0427B4D340BDC` FOREIGN KEY (`StorageTreeDefItemID`) REFERENCES `storagetreedefitem` (`StorageTreeDefItemID`),
  ADD CONSTRAINT `FK8FB0427B5327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK8FB0427B53C7EFD6` FOREIGN KEY (`StorageTreeDefID`) REFERENCES `storagetreedef` (`StorageTreeDefID`),
  ADD CONSTRAINT `FK8FB0427B7699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK8FB0427BCCAA0ABD` FOREIGN KEY (`ParentID`) REFERENCES `storage` (`StorageID`);

--
-- Contraintes pour la table `storageattachment`
--
ALTER TABLE `storageattachment`
  ADD CONSTRAINT `FKBE9EFDDE5327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKBE9EFDDE7699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKBE9EFDDEC7E55084` FOREIGN KEY (`AttachmentID`) REFERENCES `attachment` (`AttachmentID`),
  ADD CONSTRAINT `FKBE9EFDDEEB48144E` FOREIGN KEY (`StorageID`) REFERENCES `storage` (`StorageID`);

--
-- Contraintes pour la table `storagetreedef`
--
ALTER TABLE `storagetreedef`
  ADD CONSTRAINT `FK21AC10CC5327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK21AC10CC7699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`);

--
-- Contraintes pour la table `storagetreedefitem`
--
ALTER TABLE `storagetreedefitem`
  ADD CONSTRAINT `FK589045DF3C85253A` FOREIGN KEY (`ParentItemID`) REFERENCES `storagetreedefitem` (`StorageTreeDefItemID`),
  ADD CONSTRAINT `FK589045DF5327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK589045DF53C7EFD6` FOREIGN KEY (`StorageTreeDefID`) REFERENCES `storagetreedef` (`StorageTreeDefID`),
  ADD CONSTRAINT `FK589045DF7699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`);

--
-- Contraintes pour la table `taxon`
--
ALTER TABLE `taxon`
  ADD CONSTRAINT `FK6908ECA2F773E09` FOREIGN KEY (`AcceptedID`) REFERENCES `taxon` (`TaxonID`),
  ADD CONSTRAINT `FK6908ECA5327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK6908ECA70B0FCAD` FOREIGN KEY (`HybridParent1ID`) REFERENCES `taxon` (`TaxonID`),
  ADD CONSTRAINT `FK6908ECA70B1006E` FOREIGN KEY (`HybridParent2ID`) REFERENCES `taxon` (`TaxonID`),
  ADD CONSTRAINT `FK6908ECA7699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK6908ECA7BF1F70B` FOREIGN KEY (`VisibilitySetByID`) REFERENCES `specifyuser` (`SpecifyUserID`),
  ADD CONSTRAINT `FK6908ECABB9210FE` FOREIGN KEY (`TaxonTreeDefItemID`) REFERENCES `taxontreedefitem` (`TaxonTreeDefItemID`),
  ADD CONSTRAINT `FK6908ECABE9D724C` FOREIGN KEY (`ParentID`) REFERENCES `taxon` (`TaxonID`),
  ADD CONSTRAINT `FK6908ECAEFA9D5F8` FOREIGN KEY (`TaxonTreeDefID`) REFERENCES `taxontreedef` (`TaxonTreeDefID`);

--
-- Contraintes pour la table `taxonattachment`
--
ALTER TABLE `taxonattachment`
  ADD CONSTRAINT `FKF523736D1D39F06C` FOREIGN KEY (`TaxonID`) REFERENCES `taxon` (`TaxonID`),
  ADD CONSTRAINT `FKF523736D5327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKF523736D7699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKF523736DC7E55084` FOREIGN KEY (`AttachmentID`) REFERENCES `attachment` (`AttachmentID`);

--
-- Contraintes pour la table `taxoncitation`
--
ALTER TABLE `taxoncitation`
  ADD CONSTRAINT `FK14242FB11D39F06C` FOREIGN KEY (`TaxonID`) REFERENCES `taxon` (`TaxonID`),
  ADD CONSTRAINT `FK14242FB15327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK14242FB169734F30` FOREIGN KEY (`ReferenceWorkID`) REFERENCES `referencework` (`ReferenceWorkID`),
  ADD CONSTRAINT `FK14242FB17699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`);

--
-- Contraintes pour la table `taxontreedef`
--
ALTER TABLE `taxontreedef`
  ADD CONSTRAINT `FK169B1D9D5327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK169B1D9D7699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`);

--
-- Contraintes pour la table `taxontreedefitem`
--
ALTER TABLE `taxontreedefitem`
  ADD CONSTRAINT `FKF29A82305327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKF29A82306A76BE4B` FOREIGN KEY (`ParentItemID`) REFERENCES `taxontreedefitem` (`TaxonTreeDefItemID`),
  ADD CONSTRAINT `FKF29A82307699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FKF29A8230EFA9D5F8` FOREIGN KEY (`TaxonTreeDefID`) REFERENCES `taxontreedef` (`TaxonTreeDefID`);

--
-- Contraintes pour la table `treatmentevent`
--
ALTER TABLE `treatmentevent`
  ADD CONSTRAINT `FK577D85223925EE20` FOREIGN KEY (`AccessionID`) REFERENCES `accession` (`AccessionID`),
  ADD CONSTRAINT `FK577D8522410EB2B4` FOREIGN KEY (`PerformedByID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK577D85225327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK577D852275E37458` FOREIGN KEY (`CollectionObjectID`) REFERENCES `collectionobject` (`CollectionObjectID`),
  ADD CONSTRAINT `FK577D85227699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK577D85227D49A30F` FOREIGN KEY (`AuthorizedByID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK577D852297C961D8` FOREIGN KEY (`DivisionID`) REFERENCES `division` (`UserGroupScopeId`);

--
-- Contraintes pour la table `treatmenteventattachment`
--
ALTER TABLE `treatmenteventattachment`
  ADD CONSTRAINT `FK1725BC52BE40B22` FOREIGN KEY (`TreatmentEventID`) REFERENCES `treatmentevent` (`TreatmentEventID`),
  ADD CONSTRAINT `FK1725BC55327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK1725BC57699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK1725BC5C7E55084` FOREIGN KEY (`AttachmentID`) REFERENCES `attachment` (`AttachmentID`);

--
-- Contraintes pour la table `workbench`
--
ALTER TABLE `workbench`
  ADD CONSTRAINT `FK41238DBF4BDD9E10` FOREIGN KEY (`SpecifyUserID`) REFERENCES `specifyuser` (`SpecifyUserID`),
  ADD CONSTRAINT `FK41238DBF5327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK41238DBF7699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK41238DBF7F5EBA2A` FOREIGN KEY (`WorkbenchTemplateID`) REFERENCES `workbenchtemplate` (`WorkbenchTemplateID`),
  ADD CONSTRAINT `FK41238DBF99A7381A` FOREIGN KEY (`SpPrincipalID`) REFERENCES `spprincipal` (`SpPrincipalID`);

--
-- Contraintes pour la table `workbenchdataitem`
--
ALTER TABLE `workbenchdataitem`
  ADD CONSTRAINT `FK2901E47C688C522E` FOREIGN KEY (`WorkbenchTemplateMappingItemID`) REFERENCES `workbenchtemplatemappingitem` (`WorkbenchTemplateMappingItemID`),
  ADD CONSTRAINT `FK2901E47CC66EB2D4` FOREIGN KEY (`WorkbenchRowID`) REFERENCES `workbenchrow` (`WorkbenchRowID`);

--
-- Contraintes pour la table `workbenchrow`
--
ALTER TABLE `workbenchrow`
  ADD CONSTRAINT `FK486DDFBBBBCF9E96` FOREIGN KEY (`WorkbenchID`) REFERENCES `workbench` (`WorkbenchID`);

--
-- Contraintes pour la table `workbenchrowexportedrelationship`
--
ALTER TABLE `workbenchrowexportedrelationship`
  ADD CONSTRAINT `FK6829C9465327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK6829C9467699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK6829C946C66EB2D4` FOREIGN KEY (`WorkbenchRowID`) REFERENCES `workbenchrow` (`WorkbenchRowID`);

--
-- Contraintes pour la table `workbenchrowimage`
--
ALTER TABLE `workbenchrowimage`
  ADD CONSTRAINT `FKC17A6680C66EB2D4` FOREIGN KEY (`WorkbenchRowID`) REFERENCES `workbenchrow` (`WorkbenchRowID`);

--
-- Contraintes pour la table `workbenchtemplate`
--
ALTER TABLE `workbenchtemplate`
  ADD CONSTRAINT `FK6F902B394BDD9E10` FOREIGN KEY (`SpecifyUserID`) REFERENCES `specifyuser` (`SpecifyUserID`),
  ADD CONSTRAINT `FK6F902B395327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK6F902B397699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`);

--
-- Contraintes pour la table `workbenchtemplatemappingitem`
--
ALTER TABLE `workbenchtemplatemappingitem`
  ADD CONSTRAINT `FK7D6D44085327F942` FOREIGN KEY (`ModifiedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK7D6D44087699B003` FOREIGN KEY (`CreatedByAgentID`) REFERENCES `agent` (`AgentID`),
  ADD CONSTRAINT `FK7D6D44087F5EBA2A` FOREIGN KEY (`WorkbenchTemplateID`) REFERENCES `workbenchtemplate` (`WorkbenchTemplateID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
