.class public Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "XDMDDFParser.java"

# interfaces
.implements Lcom/samsung/android/app/omcagent/dm/interfaces/XDMInterface;
.implements Lcom/samsung/android/app/omcagent/dm/eng/core/XDMXml;
.implements Lcom/samsung/android/app/omcagent/dm/eng/core/XDMWbxml;


# static fields
.field public static CurXmlTree:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DM_Tree;

.field public static XmlTree:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DM_Tree;

.field public static bNodeChangeMode:Z

.field public static gTndsData:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMTndsData;

.field public static gTndsWbxmlHeaderInfo:[C

.field public static g_om:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmTree;

.field public static g_szDmManagementObjectIdPath:[Ljava/lang/String;

.field public static g_szDmManagementObjectIdType:[Ljava/lang/String;

.field public static g_szDmXmlOmaTags:[Ljava/lang/String;

.field public static g_szDmXmlTagString:[Ljava/lang/String;

.field public static g_szNewAccPath:Ljava/lang/String;

.field public static g_szTndsTokenStr:[Ljava/lang/String;

.field public static gstTagManage:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMTndsTagManage;


# instance fields
.field public gTagCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/16 v3, 0x2f

    const/16 v0, 0x3d

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ""

    aput-object v2, v0, v1

    const-string v1, ""

    aput-object v1, v0, v4

    const-string v1, ""

    aput-object v1, v0, v5

    const-string v1, ""

    aput-object v1, v0, v6

    const-string v1, "AccessType"

    aput-object v1, v0, v7

    const/4 v1, 0x6

    const-string v2, "ACL"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Add"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "b64"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "bin"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "bool"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "chr"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "CaseSense"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "CIS"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Copy"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "CS"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "data"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "DDFName"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "DefaultValue"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Delete"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Description"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "DFFormat"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "DFProperties"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "DFTitle"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "DFType"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Dynamic"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Exec"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "float"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "Format"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "Get"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "int"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "Man"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "MgmtTree"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "MIME"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "Mod"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "Name"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "Node"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "node"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "NodeName"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "null"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "Occurrence"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "One"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "OneOrMore"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "OneOrN"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "Path"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "Permanent"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "Replace"

    aput-object v2, v0, v1

    const-string v1, "RTProperties"

    aput-object v1, v0, v3

    const/16 v1, 0x30

    const-string v2, "Scope"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "Size"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "time"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "Title"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "TStamp"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "Type"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "Value"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "VerDTD"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "VerNo"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "xml"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "ZeroOrMore"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "ZeroOrN"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "ZeroOrOne"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->g_szDmXmlOmaTags:[Ljava/lang/String;

    const/16 v0, 0x2a

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "<MgmtTree>"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "</MgmtTree>\n"

    aput-object v2, v0, v1

    const-string v1, "<VerDTD>"

    aput-object v1, v0, v4

    const-string v1, "</VerDTD>\n"

    aput-object v1, v0, v5

    const-string v1, "<Node>"

    aput-object v1, v0, v6

    const-string v1, "</Node>\n"

    aput-object v1, v0, v7

    const/4 v1, 0x6

    const-string v2, "<NodeName>"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "</NodeName>\n"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "<Path>"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "</Path>\n"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "<Value>"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "</Value>\n"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "<RTProperties>"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "</RTProperties>\n"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "<ACL>"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "</ACL>\n"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "<Format>"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "</Format>\n"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "<Type>"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "</Type>\n"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "<Add>"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "</Add>"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "<Get>"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "</Get>"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "<Replace>"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "</Replace>"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "<Delete>"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "</Delete>"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "<Exec>"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "</Exec>"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "<AccessType>"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "</AccessType>\n"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "<![CDATA["

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "]]>"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "<SyncML>"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "</SyncML>\n"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "<ResultCode>"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "</ResultCode>"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "<Identifier>"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "</Identifier>"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, ""

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->g_szDmXmlTagString:[Ljava/lang/String;

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "./SyncML/DMAcc"

    aput-object v2, v0, v1

    const-string v1, "./SyncML/DMAcc"

    aput-object v1, v0, v4

    const-string v1, "./SyncML/DMAcc"

    aput-object v1, v0, v5

    const-string v1, "./SyncML/DMAcc"

    aput-object v1, v0, v6

    const-string v1, "./SyncML/DMAcc"

    aput-object v1, v0, v7

    const/4 v1, 0x6

    const-string v2, "./SyncML/DMAcc"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "./SyncML/DMAcc"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "./DevInfo"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "./DevDetail"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "./Inbox"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "./FUMO"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->g_szDmManagementObjectIdPath:[Ljava/lang/String;

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "org.openmobilealliance/1.0/w1"

    aput-object v2, v0, v1

    const-string v1, "org.openmobilealliance/1.0/w2"

    aput-object v1, v0, v4

    const-string v1, "org.openmobilealliance/1.0/w3"

    aput-object v1, v0, v5

    const-string v1, "org.openmobilealliance/1.0/w4"

    aput-object v1, v0, v6

    const-string v1, "org.openmobilealliance/1.0/w5"

    aput-object v1, v0, v7

    const/4 v1, 0x6

    const-string v2, "org.openmobilealliance/1.0/w6"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "org.openmobilealliance/1.0/w7"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "org.openmobilealliance.dm/1.0/DevInfo"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "org.openmobilealliance.dm/1.0/DevDetail"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "org.openmobilealliance.dm/1.0/Inbox"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "org.openmobilealliance/1.0/FirmwareUpdateManagementObject"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->g_szDmManagementObjectIdType:[Ljava/lang/String;

    const/16 v0, 0x38

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "AccessType"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ACL"

    aput-object v2, v0, v1

    const-string v1, "Add"

    aput-object v1, v0, v4

    const-string v1, "b64"

    aput-object v1, v0, v5

    const-string v1, "bin"

    aput-object v1, v0, v6

    const-string v1, "bool"

    aput-object v1, v0, v7

    const/4 v1, 0x6

    const-string v2, "chr"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "CaseSense"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "CIS"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Copy"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "CS"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "date"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "DDFName"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "DefaultValue"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Delete"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Description"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "DFFormat"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "DFProperties"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "DFTitle"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "DFType"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Dynamic"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Exec"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "float"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Format"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Get"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "int"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Man"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "MgmtTree"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "MIME"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "Mod"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "Name"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "Node"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "node"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "NodeName"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "null"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "Occurrence"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "One"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "OneOrMore"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "OneOrN"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "Path"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "Permanent"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "Replace"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "RTProperties"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "Scope"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "Size"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "time"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "Title"

    aput-object v2, v0, v1

    const-string v1, "TStamp"

    aput-object v1, v0, v3

    const/16 v1, 0x30

    const-string v2, "Type"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "Value"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "VerDTD"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "VerNo"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "xml"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "ZerOrMore"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "ZeroOrN"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "ZeroOrOne"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->g_szTndsTokenStr:[Ljava/lang/String;

    const/16 v0, 0x1f

    new-array v0, v0, [C

    const/4 v1, 0x0

    aput-char v4, v0, v1

    const/16 v1, 0x6a

    aput-char v1, v0, v5

    const/16 v1, 0x1a

    aput-char v1, v0, v6

    const/16 v1, 0x2d

    aput-char v1, v0, v7

    const/4 v1, 0x6

    aput-char v3, v0, v1

    const/4 v1, 0x7

    aput-char v3, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x4f

    aput-char v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x4d

    aput-char v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x41

    aput-char v2, v0, v1

    const/16 v1, 0xb

    aput-char v3, v0, v1

    const/16 v1, 0xc

    aput-char v3, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x44

    aput-char v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x54

    aput-char v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x44

    aput-char v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x2d

    aput-char v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x44

    aput-char v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x4d

    aput-char v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x2d

    aput-char v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x44

    aput-char v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x44

    aput-char v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x46

    aput-char v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x20

    aput-char v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x31

    aput-char v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x2e

    aput-char v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x32

    aput-char v2, v0, v1

    const/16 v1, 0x1b

    aput-char v3, v0, v1

    const/16 v1, 0x1c

    aput-char v3, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x45

    aput-char v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x4e

    aput-char v2, v0, v1

    sput-object v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->gTndsWbxmlHeaderInfo:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    sput-boolean v1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->bNodeChangeMode:Z

    new-instance v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DM_Tree;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DM_Tree;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->CurXmlTree:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DM_Tree;

    iput v1, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->gTagCode:I

    new-instance v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmTree;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmTree;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->g_om:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmTree;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->g_szNewAccPath:Ljava/lang/String;

    return-void
.end method

.method private static OMSETPATH(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmTree;Ljava/lang/String;II)V
    .locals 6

    const/4 v2, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v4, ""

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v5, v2

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmLib;->xdmOmWrite(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmTree;Ljava/lang/String;IILjava/lang/Object;I)I

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/app/omcagent/dm/agent/XDMAgent;->xdmAgentMakeDefaultAcl(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmTree;Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public static xdmAgentVerifyNewAccount(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmTree;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const-string v2, ""

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "."

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v2, p1

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-static {p0, v2}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;

    move-result-object v1

    if-nez v1, :cond_2

    sput-object v2, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->g_szNewAccPath:Ljava/lang/String;

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v3, 0x0

    sput-object v3, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->g_szNewAccPath:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static xdmDDFCheckInbox(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_0
    const/4 v0, 0x1

    :goto_1
    const/16 v4, 0xc

    if-lt v0, v4, :cond_1

    :goto_2
    move-object v4, v2

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFGetMOType(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFGetMOPath(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    const/4 v2, 0x0

    move-object v2, v3

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public static xdmDDFConvertAddTndsCodePage()V
    .locals 6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetWbxmlSize()I

    move-result v1

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetWbxmlData()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    add-int/lit8 v1, v1, -0x1

    aget-byte v4, v3, v1

    int-to-char v0, v4

    invoke-virtual {v2, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetWbxmlSize(I)V

    invoke-static {v2}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetWbxmlData(Ljava/lang/String;)V

    return-void
.end method

.method public static xdmDDFConvertCheckElement(C)V
    .locals 3

    int-to-byte v0, p0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    sget-object v0, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "# ERROR # What? [value : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]!!! ###"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    :goto_0
    :pswitch_1
    return-void

    :pswitch_2
    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFProcessConvertStringData()V

    goto :goto_0

    :pswitch_3
    invoke-static {p0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFProcessConvertHexData(C)V

    goto :goto_0

    :pswitch_4
    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFConvertAddTndsCodePage()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x45
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static xdmDDFConvertGetXMLTag(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->g_szTndsTokenStr:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static xdmDDFConvertString2WbxmlHex(Ljava/lang/String;)C
    .locals 6

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    const/16 v3, 0x38

    if-ne v0, v3, :cond_0

    const-string v3, "SyncML"

    const-string v4, "SyncML"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v5, v3, v5, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x6d

    :goto_1
    return v3

    :cond_0
    invoke-static {v0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFConvertGetXMLTag(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v5, v2, v5, v1}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v3, v0, 0x5

    add-int/lit8 v3, v3, 0x40

    int-to-char v3, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    const-string v4, "# ERROR # Not Found String !!! ###"

    invoke-virtual {v3, v4}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    const v3, 0xffff

    goto :goto_1
.end method

.method public static xdmDDFCreateNode(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DM_Tree;Ljava/lang/String;)Z
    .locals 8

    const/4 v3, 0x0

    const/4 v5, 0x1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DM_Tree;->childlist:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;

    const/4 v4, 0x0

    if-nez v1, :cond_2

    move v3, v5

    goto :goto_0

    :cond_2
    invoke-static {v1, v3}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;->xdmListSetCurrentObj(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;I)V

    :goto_1
    if-nez p0, :cond_3

    move v3, v5

    goto :goto_0

    :cond_3
    invoke-static {v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;->xdmListGetNextObj(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DM_Tree;

    if-nez p0, :cond_4

    move v3, v5

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DM_Tree;->object:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;

    iget-object v6, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->m_szTag:Ljava/lang/String;

    invoke-static {v6}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFXmlTagCode(Ljava/lang/String;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    sget-object v6, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    sget-object v6, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    sget-object v7, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->g_szDmXmlOmaTags:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_0
    iput-object p1, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->m_szPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFCreateNodeToOM(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v6, "/"

    invoke-virtual {p1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v6, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->m_szName:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFCreateNode(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DM_Tree;Ljava/lang/String;)Z

    const/16 v6, 0x2f

    invoke-static {p1, v6}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMMem;->xdmLibStrrchr(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v4

    move-object p1, v4

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x24
        :pswitch_0
    .end packed-switch
.end method

.method private static xdmDDFCreateNodeToOM(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;)Z
    .locals 14

    iget v6, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->scope:I

    iget v7, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->format:I

    iget v5, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->acl:I

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->m_szData:Ljava/lang/String;

    const/4 v3, 0x0

    const-string v1, ""

    const/4 v8, 0x0

    const-string v9, ""

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->m_szName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    const-string v4, "Not exist nodename."

    invoke-virtual {v0, v4}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->m_szPath:Ljava/lang/String;

    const-string v4, "."

    invoke-static {v0, v4}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMMem;->xdmLibStrstr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v8, 0x0

    :goto_1
    if-nez v8, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->m_szPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "."

    invoke-virtual {v9, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->m_szPath:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->m_szPath:Ljava/lang/String;

    iput-object v9, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->m_szPath:Ljava/lang/String;

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->m_szPath:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->m_szName:Ljava/lang/String;

    const/4 v10, 0x1

    invoke-static {v0, v4, v10}, Lcom/samsung/android/app/omcagent/dm/agent/XDMAgent;->xdmAgentSetXNodePath(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->m_szName:Ljava/lang/String;

    const-string v4, "AAuthData"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v7, 0x1

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->m_szPath:Ljava/lang/String;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->m_szName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v5, :cond_3

    const/16 v5, 0x1b

    :cond_3
    if-nez v6, :cond_4

    const/4 v6, 0x2

    :cond_4
    const/16 v0, 0xc

    if-ne v7, v0, :cond_5

    const/4 v7, 0x6

    :cond_5
    const/4 v0, 0x6

    if-eq v7, v0, :cond_6

    const/4 v0, 0x7

    if-eq v7, v0, :cond_6

    const/16 v0, 0xc

    if-ne v7, v0, :cond_9

    :cond_6
    sget-object v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->g_om:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmTree;

    iget-object v4, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->m_szType:Ljava/lang/String;

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFSetOMTree(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmTree;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V

    sget-object v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->g_om:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmTree;

    invoke-static {v0, v1, v5, v6}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->OMSETPATH(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmTree;Ljava/lang/String;II)V

    :goto_3
    const/4 v1, 0x0

    const/4 v0, 0x1

    goto :goto_0

    :cond_7
    const/4 v8, 0x1

    goto :goto_1

    :cond_8
    const-string v0, "."

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->m_szPath:Ljava/lang/String;

    goto :goto_2

    :cond_9
    const/4 v0, 0x2

    if-ne v7, v0, :cond_b

    const/4 v3, 0x0

    :goto_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-ltz v0, :cond_a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v10, v0

    const-wide/16 v12, 0x100

    cmp-long v0, v10, v12

    if-ltz v0, :cond_d

    :cond_a
    sget-object v0, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v10, "Size["

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, "]. Fatal ERROR."

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_b
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v2, "null"

    iput-object v2, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->m_szData:Ljava/lang/String;

    :cond_c
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_4

    :cond_d
    sget-object v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->g_om:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmTree;

    iget-object v4, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->m_szType:Ljava/lang/String;

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFSetOMTree(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmTree;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V

    goto :goto_3
.end method

.method public static xdmDDFCreateTNDSNode(Ljava/lang/String;ILcom/samsung/android/app/omcagent/dm/eng/core/XDMOmTree;)I
    .locals 9

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    new-instance v3, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_XMLStream;

    invoke-direct {v3}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_XMLStream;-><init>()V

    new-instance v4, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DM_Tree;

    invoke-direct {v4}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DM_Tree;-><init>()V

    invoke-static {p0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFParseCDATA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {p0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFParseCDATA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_XMLStream;->m_szData:Ljava/lang/String;

    iput v2, v3, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_XMLStream;->size:I

    :goto_0
    invoke-static {v3, v4}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFParsing(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_XMLStream;Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DM_Tree;)I

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    const-string v7, "Parsing Fail."

    invoke-virtual {v6, v7}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    sput-object v8, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->g_om:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmTree;

    :goto_1
    return v5

    :cond_0
    iput-object p0, v3, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_XMLStream;->m_szData:Ljava/lang/String;

    iput p1, v3, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_XMLStream;->size:I

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    sget-object v6, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    const-string v7, "OM is NULL."

    invoke-virtual {v6, v7}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    sput-object v8, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->g_om:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmTree;

    goto :goto_1

    :cond_2
    sput-object p2, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->g_om:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmTree;

    sget-object v4, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->XmlTree:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DM_Tree;

    invoke-static {v4}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFXmlTagParsing(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DM_Tree;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v6, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    const-string v7, "Create Node Fail. Check the xml file."

    invoke-virtual {v6, v7}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    sput-object v8, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->g_om:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmTree;

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    sget-object v5, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    const-string v6, "Success."

    invoke-virtual {v5, v6}, Lcom/sec/android/fota/common/log/LoggerData;->I(Ljava/lang/String;)V

    const/4 v5, 0x1

    goto :goto_1
.end method

.method public static xdmDDFCreateTNDSNodeFromFile(Landroid/content/Context;ILcom/samsung/android/app/omcagent/dm/eng/core/XDMOmTree;)I
    .locals 6

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/app/omcagent/dm/db/XDBFileAdapter;->xdbFileGetSize(Landroid/content/Context;I)I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    new-array v1, v0, [B

    invoke-static {p0, p1, v4, v0, v1}, Lcom/samsung/android/app/omcagent/dm/db/XDBFileAdapter;->xdbFileRead(Landroid/content/Context;III[B)I

    move-result v5

    if-nez v5, :cond_0

    new-instance v3, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v3, v4, p2}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFCreateTNDSNode(Ljava/lang/String;ILcom/samsung/android/app/omcagent/dm/eng/core/XDMOmTree;)I

    move-result v2

    move v4, v2

    goto :goto_0
.end method

.method public static xdmDDFGetMOPath(I)Ljava/lang/String;
    .locals 3

    if-lez p0, :cond_0

    const/16 v0, 0xc

    if-lt p0, v0, :cond_1

    :cond_0
    sget-object v0, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "wrong nId. ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->g_szDmManagementObjectIdPath:[Ljava/lang/String;

    aget-object v0, v0, p0

    goto :goto_0
.end method

.method public static xdmDDFGetMOType(I)Ljava/lang/String;
    .locals 3

    if-lez p0, :cond_0

    const/16 v0, 0xc

    if-lt p0, v0, :cond_1

    :cond_0
    sget-object v0, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "wrong nId. ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->g_szDmManagementObjectIdType:[Ljava/lang/String;

    aget-object v0, v0, p0

    goto :goto_0
.end method

.method public static xdmDDFParseCDATA(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v6, 0x0

    const-string v3, ""

    const-string v4, ""

    const-string v1, ""

    const/4 v0, 0x0

    sget-object v7, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->g_szDmXmlTagString:[Ljava/lang/String;

    const/16 v8, 0x21

    aget-object v2, v7, v8

    sget-object v7, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->g_szDmXmlTagString:[Ljava/lang/String;

    const/16 v8, 0x20

    aget-object v5, v7, v8

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    :goto_0
    return-object v6

    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {p0, v5, v7}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMMem;->xdmLibStrncmp(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_0

    invoke-static {p0, v2}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMMem;->xdmLibStrstr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object v6, v3

    goto :goto_0
.end method

.method public static xdmDDFParsing(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_XMLStream;Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DM_Tree;)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_XMLStream;->m_szData:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/16 v0, 0xbb9

    move v1, v0

    :goto_0
    return v1

    :cond_1
    sput-object p1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->CurXmlTree:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DM_Tree;

    move v1, v0

    goto :goto_0
.end method

.method public static xdmDDFPrintNodePropert(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;)V
    .locals 6

    const-wide/16 v4, 0x400

    const-string v0, ""

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->m_szPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->m_szPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->m_szName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->m_szName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    int-to-long v2, v1

    cmp-long v1, v4, v2

    if-gtz v1, :cond_1

    sget-object v1, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    const-string v2, "Buffer Overflow. Increase the space. for element->name."

    invoke-virtual {v1, v2}, Lcom/sec/android/fota/common/log/LoggerData;->I(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-void

    :cond_1
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->m_szName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->m_szData:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->m_szData:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    int-to-long v2, v1

    cmp-long v1, v4, v2

    if-gtz v1, :cond_3

    sget-object v1, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    const-string v2, "Buffer Overflow. Increase the space. for element->data."

    invoke-virtual {v1, v2}, Lcom/sec/android/fota/common/log/LoggerData;->I(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->m_szData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->m_szType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->m_szType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    int-to-long v2, v1

    cmp-long v1, v4, v2

    if-gtz v1, :cond_5

    sget-object v1, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    const-string v2, "Buffer Overflow. Increase the space. element->type."

    invoke-virtual {v1, v2}, Lcom/sec/android/fota/common/log/LoggerData;->I(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    const-string v1, "] ["

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->m_szType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[DDF]["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->acl:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->format:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->scope:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/fota/common/log/LoggerData;->H(Ljava/lang/String;)V

    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public static xdmDDFProcessConvertAccessTypeElement()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v3, ""

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetWbxmlSize()I

    move-result v1

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetWbxmlData()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetXMLData()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetXMLSize()I

    move-result v2

    const/16 v6, 0x3c

    if-ne v0, v6, :cond_0

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_0
    const/16 v6, 0x2f

    if-ne v0, v6, :cond_1

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v2, v2, -0x2

    :cond_0
    const/4 v0, 0x0

    invoke-static {v3}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFConvertString2WbxmlHex(Ljava/lang/String;)C

    move-result v0

    add-int/lit8 v6, v0, -0x40

    int-to-char v0, v6

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetWbxmlSize(I)V

    invoke-static {v4}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetWbxmlData(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetXMLSize(I)V

    invoke-static {v5}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetXMLData(Ljava/lang/String;)V

    const/4 v3, 0x0

    return-void

    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method public static xdmDDFProcessConvertFormatElement()V
    .locals 10

    const/16 v9, 0x3c

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v3, ""

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetWbxmlSize()I

    move-result v1

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetWbxmlData()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetXMLData()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetXMLSize()I

    move-result v2

    if-ne v0, v9, :cond_3

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :cond_0
    :goto_0
    const/16 v6, 0x2f

    if-ne v0, v6, :cond_2

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v2, v2, -0x2

    :cond_1
    const/4 v0, 0x0

    invoke-static {v3}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFConvertString2WbxmlHex(Ljava/lang/String;)C

    move-result v0

    add-int/lit8 v6, v0, -0x40

    int-to-char v0, v6

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetWbxmlSize(I)V

    invoke-static {v4}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetWbxmlData(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetXMLSize(I)V

    invoke-static {v5}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetXMLData(Ljava/lang/String;)V

    const/4 v3, 0x0

    return-void

    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v6, 0x20

    if-ne v0, v6, :cond_0

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    :cond_3
    if-eq v0, v9, :cond_1

    :goto_1
    if-eq v0, v9, :cond_1

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_1
.end method

.method public static xdmDDFProcessConvertHexData(C)V
    .locals 0

    sparse-switch p0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFProcessConvertFormatElement()V

    goto :goto_0

    :sswitch_1
    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFProcessConvertAccessTypeElement()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x45 -> :sswitch_1
        0x55 -> :sswitch_0
        0x5c -> :sswitch_0
    .end sparse-switch
.end method

.method public static xdmDDFProcessConvertStringData()V
    .locals 8

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetWbxmlSize()I

    move-result v2

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetWbxmlData()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetXMLData()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetXMLSize()I

    move-result v3

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    :goto_0
    const/16 v6, 0x3c

    if-ne v0, v6, :cond_0

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetWbxmlSize(I)V

    invoke-static {v4}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetWbxmlData(Ljava/lang/String;)V

    sub-int v6, v3, v1

    invoke-static {v6}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetXMLSize(I)V

    invoke-static {v5}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetXMLData(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method public static xdmDDFSetOMTree(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmTree;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V
    .locals 7

    const/4 v1, 0x3

    const/4 v6, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;

    move-result-object v6

    invoke-static {v1}, Lcom/samsung/android/app/omcagent/dm/agent/XDMAgent;->xdmAgentSetSyncMode(I)V

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/agent/XDMAgent;->xdmAgentGetSyncMode()I

    move-result v0

    if-ne v0, v1, :cond_1

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p7

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFSetOMTreeProperty(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmTree;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    invoke-static {p0, p1, p5, p6}, Lcom/samsung/android/app/omcagent/dm/agent/XDMAgent;->xdmAgentMakeDefaultAcl(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmTree;Ljava/lang/String;II)V

    :cond_1
    sget-boolean v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->bNodeChangeMode:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    const-string v1, "bNodeChangeMode Change Node."

    invoke-virtual {v0, v1}, Lcom/sec/android/fota/common/log/LoggerData;->I(Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p7

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFSetOMTreeProperty(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmTree;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    invoke-static {p0, p1, p5, p6}, Lcom/samsung/android/app/omcagent/dm/agent/XDMAgent;->xdmAgentMakeDefaultAcl(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmTree;Ljava/lang/String;II)V

    :cond_2
    return-void
.end method

.method public static xdmDDFSetOMTreeProperty(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmTree;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 15

    const/16 v2, 0x100

    new-array v14, v2, [C

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmLib;->xdmOmMakeParentPath(Ljava/lang/String;[C)V

    const-string v13, ""

    :goto_0
    aget-char v2, v14, v8

    if-nez v2, :cond_5

    invoke-static {p0, v13}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;

    move-result-object v12

    if-nez v12, :cond_0

    const/16 v2, 0x1b

    const/4 v3, 0x1

    invoke-static {p0, v13, v2, v3}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmLib;->xdmOmProcessCmdImplicitAdd(Ljava/lang/Object;Ljava/lang/String;II)Z

    :cond_0
    const/4 v2, 0x6

    move/from16 v0, p5

    if-eq v0, v2, :cond_1

    const/4 v2, 0x7

    move/from16 v0, p5

    if-eq v0, v2, :cond_1

    const/16 v2, 0xc

    move/from16 v0, p5

    if-ne v0, v2, :cond_6

    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, ""

    const/4 v7, 0x0

    move-object v2, p0

    move-object/from16 v3, p1

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmLib;->xdmOmWrite(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmTree;Ljava/lang/String;IILjava/lang/Object;I)I

    :cond_2
    :goto_1
    invoke-static/range {p0 .. p1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmLib;->xdmOmGetNodeProp(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmTree;Ljava/lang/String;)Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;

    move-result-object v12

    if-eqz v12, :cond_4

    iget-object v2, v12, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->type:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;

    if-eqz v2, :cond_3

    iget-object v2, v12, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->type:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;

    invoke-static {v2}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmLib;->xdmOmVfsDeleteMimeList(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;)V

    :cond_3
    new-instance v9, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;

    invoke-direct {v9}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;-><init>()V

    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    move-object/from16 v0, p4

    iput-object v0, v9, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;->data:Ljava/lang/Object;

    :goto_2
    const/4 v2, 0x0

    iput-object v2, v9, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;->data:Ljava/lang/Object;

    iput-object v9, v12, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->type:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;

    move/from16 v0, p5

    iput v0, v12, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVnode;->format:I

    :cond_4
    return-void

    :cond_5
    aget-char v2, v14, v8

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_6
    const/4 v5, 0x0

    move-object v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p3

    move-object/from16 v6, p2

    move/from16 v7, p3

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmLib;->xdmOmWrite(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmTree;Ljava/lang/String;IILjava/lang/Object;I)I

    move-result v2

    int-to-long v10, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v10, v2

    if-gtz v2, :cond_2

    sget-object v2, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Size["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/fota/common/log/LoggerData;->I(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    const-string v2, "text/plain"

    iput-object v2, v9, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;->data:Ljava/lang/Object;

    goto :goto_2
.end method

.method public static xdmDDFTNDSAllocXMLData()Z
    .locals 3

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSCheckMem(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    const-string v2, "# ERROR #  Alloc Error !!! ###"

    invoke-virtual {v1, v2}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetXMLData(Ljava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static xdmDDFTNDSAppendNameSpace()V
    .locals 4

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetXMLData()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetXMLSize()I

    move-result v1

    const-string v3, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "<SyncML xmlns=\'syncml:dmddf1.2\'>"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v2}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetXMLData(Ljava/lang/String;)V

    add-int v3, v1, v0

    invoke-static {v3}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetXMLSize(I)V

    return-void
.end method

.method public static xdmDDFTNDSAppendSyncMLCloseTag()V
    .locals 4

    const/4 v2, 0x0

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetXMLData()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetXMLSize()I

    move-result v1

    const-string v3, "</SyncML>"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "</SyncML>"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v2}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetXMLData(Ljava/lang/String;)V

    add-int v3, v1, v0

    invoke-static {v3}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetXMLSize(I)V

    return-void
.end method

.method public static xdmDDFTNDSCheckMem(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static xdmDDFTNDSGetTagString(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x7d

    if-ge p0, v1, :cond_0

    add-int/lit8 v0, p0, -0x45

    sget-object v1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->g_szTndsTokenStr:[Ljava/lang/String;

    aget-object v1, v1, v0

    :goto_0
    return-object v1

    :cond_0
    const/16 v1, 0x88

    if-ne p0, v1, :cond_1

    const-string v1, "SyncML"

    goto :goto_0

    :cond_1
    const-string v1, "NULL"

    goto :goto_0
.end method

.method public static xdmDDFTNDSGetWbxmlData()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->gTndsData:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMTndsData;

    iget-object v0, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMTndsData;->m_szWbxmlData:Ljava/lang/String;

    return-object v0
.end method

.method public static xdmDDFTNDSGetWbxmlDataStart()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->gTndsData:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMTndsData;

    iget-object v0, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMTndsData;->m_szWbxmlDataStart:Ljava/lang/String;

    return-object v0
.end method

.method public static xdmDDFTNDSGetWbxmlSize()I
    .locals 1

    sget-object v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->gTndsData:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMTndsData;

    iget v0, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMTndsData;->nWbxmlDataSize:I

    return v0
.end method

.method public static xdmDDFTNDSGetXMLData()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->gTndsData:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMTndsData;

    iget-object v0, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMTndsData;->m_szXMLData:Ljava/lang/String;

    return-object v0
.end method

.method public static xdmDDFTNDSGetXMLDataStart()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->gTndsData:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMTndsData;

    iget-object v0, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMTndsData;->m_szXMLDataStart:Ljava/lang/String;

    return-object v0
.end method

.method public static xdmDDFTNDSGetXMLSize()I
    .locals 1

    sget-object v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->gTndsData:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMTndsData;

    iget v0, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMTndsData;->nXMLDataSize:I

    return v0
.end method

.method public static xdmDDFTNDSInitParse(Ljava/lang/String;I)V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMTndsData;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMTndsData;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->gTndsData:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMTndsData;

    invoke-static {p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetWbxmlSize(I)V

    invoke-static {p0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetWbxmlData(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSAllocXMLData()Z

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSAppendNameSpace()V

    new-instance v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMTndsTagManage;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMTndsTagManage;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->gstTagManage:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMTndsTagManage;

    return-void
.end method

.method public static xdmDDFTNDSMakeCloseTagString()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const-string v1, ""

    invoke-static {v1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSCheckMem(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    const-string v3, "# ERROR # Alloc Error !!! ###"

    invoke-virtual {v2, v3}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSManagePopTag()I

    move-result v0

    const-string v1, "</"

    invoke-static {v0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetTagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    goto :goto_0
.end method

.method public static xdmDDFTNDSMakeOpenTagString(I)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSCheckMem(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    const-string v2, "# ERROR # Alloc Error !!! ###"

    invoke-virtual {v1, v2}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const-string v0, "<"

    invoke-static {p0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetTagString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0
.end method

.method public static xdmDDFTNDSManagePopTag()I
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    sget-object v2, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->gstTagManage:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMTndsTagManage;

    iget v2, v2, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMTndsTagManage;->nTagSP:I

    if-nez v2, :cond_0

    sget-object v2, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    const-string v3, "# ERROR # TagSP EMPTY !!! ###"

    invoke-virtual {v2, v3}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    sget-object v2, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->gstTagManage:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMTndsTagManage;

    iget v3, v2, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMTndsTagManage;->nTagSP:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMTndsTagManage;->nTagSP:I

    sget-object v2, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->gstTagManage:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMTndsTagManage;

    iget-object v2, v2, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMTndsTagManage;->eTagID:[I

    sget-object v3, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->gstTagManage:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMTndsTagManage;

    iget v3, v3, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMTndsTagManage;->nTagSP:I

    aget v0, v2, v3

    sget-object v2, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->gstTagManage:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMTndsTagManage;

    iget-object v2, v2, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMTndsTagManage;->eTagID:[I

    sget-object v3, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->gstTagManage:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMTndsTagManage;

    iget v3, v3, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMTndsTagManage;->nTagSP:I

    aput v1, v2, v3

    goto :goto_0
.end method

.method public static xdmDDFTNDSManagePushTag(I)Z
    .locals 2

    sget-object v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->gstTagManage:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMTndsTagManage;

    iget v0, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMTndsTagManage;->nTagSP:I

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    const-string v1, "# ERROR # TagSP FULL !!! ###"

    invoke-virtual {v0, v1}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->gstTagManage:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMTndsTagManage;

    iget-object v0, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMTndsTagManage;->eTagID:[I

    sget-object v1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->gstTagManage:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMTndsTagManage;

    iget v1, v1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMTndsTagManage;->nTagSP:I

    aput p0, v0, v1

    sget-object v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->gstTagManage:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMTndsTagManage;

    iget v1, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMTndsTagManage;->nTagSP:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMTndsTagManage;->nTagSP:I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static xdmDDFTNDSParsingACLTag()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSParsingOpenTag()V

    return-void
.end method

.method public static xdmDDFTNDSParsingAccessTypeChildElement()V
    .locals 8

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetWbxmlSize()I

    move-result v2

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetWbxmlData()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetXMLData()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetXMLSize()I

    move-result v3

    add-int/lit8 v0, v0, -0x40

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    const-string v5, "<"

    invoke-static {v0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetTagString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "/>"

    invoke-virtual {v5, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    add-int v7, v3, v1

    invoke-static {v7}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetXMLSize(I)V

    invoke-static {v4}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetXMLData(Ljava/lang/String;)V

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetWbxmlSize(I)V

    invoke-static {v6}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetWbxmlData(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x47 -> :sswitch_0
        0x4e -> :sswitch_0
        0x53 -> :sswitch_0
        0x5a -> :sswitch_0
        0x5d -> :sswitch_0
        0x6e -> :sswitch_0
    .end sparse-switch
.end method

.method public static xdmDDFTNDSParsingAccessTypeTag()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSParsingOpenTag()V

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSParsingAccessTypeChildElement()V

    return-void
.end method

.method public static xdmDDFTNDSParsingCloseTag()V
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetWbxmlSize()I

    move-result v1

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetWbxmlData()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetXMLData()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetXMLSize()I

    move-result v2

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSMakeCloseTagString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_0
    add-int v6, v2, v0

    invoke-static {v6}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetXMLSize(I)V

    invoke-static {v5}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetXMLData(Ljava/lang/String;)V

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetWbxmlSize(I)V

    invoke-static {v4}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetWbxmlData(Ljava/lang/String;)V

    return-void
.end method

.method public static xdmDDFTNDSParsingCodePage()Z
    .locals 6

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetWbxmlData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eqz v4, :cond_0

    sget-object v3, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    const-string v4, "### ERROR ### TNDS Tag Right ###"

    invoke-virtual {v3, v4}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-static {v2}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetWbxmlData(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetWbxmlSize()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-static {v4}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetWbxmlSize(I)V

    goto :goto_0
.end method

.method public static xdmDDFTNDSParsingDDFNameTag()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSParsingOpenTag()V

    return-void
.end method

.method public static xdmDDFTNDSParsingFormatChildElement()V
    .locals 10

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v4, ""

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetWbxmlSize()I

    move-result v2

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetWbxmlData()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetXMLData()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetXMLSize()I

    move-result v3

    add-int/lit8 v0, v0, 0x40

    sparse-switch v0, :sswitch_data_0

    sget-object v7, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "#ERROR!!!#  child tag vlaue is "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  ###"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    :goto_0
    :sswitch_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v6, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    add-int v7, v3, v1

    invoke-static {v7}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetXMLSize(I)V

    invoke-static {v6}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetXMLData(Ljava/lang/String;)V

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetWbxmlSize(I)V

    invoke-static {v5}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetWbxmlData(Ljava/lang/String;)V

    return-void

    :sswitch_1
    const-string v4, "<"

    invoke-static {v0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetTagString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "/>"

    invoke-virtual {v4, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x48 -> :sswitch_1
        0x49 -> :sswitch_1
        0x4a -> :sswitch_1
        0x4b -> :sswitch_1
        0x50 -> :sswitch_1
        0x5b -> :sswitch_1
        0x5e -> :sswitch_1
        0x65 -> :sswitch_1
        0x67 -> :sswitch_1
        0x69 -> :sswitch_1
        0x6a -> :sswitch_1
        0x6b -> :sswitch_0
        0x72 -> :sswitch_1
        0x79 -> :sswitch_1
        0x7a -> :sswitch_1
        0x7b -> :sswitch_0
        0x7c -> :sswitch_1
    .end sparse-switch
.end method

.method public static xdmDDFTNDSParsingFormatTag()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSParsingOpenTag()V

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSParsingFormatChildElement()V

    return-void
.end method

.method public static xdmDDFTNDSParsingMIMETag()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSParsingOpenTag()V

    return-void
.end method

.method public static xdmDDFTNDSParsingMgmtTreeTag()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSParsingOpenTag()V

    return-void
.end method

.method public static xdmDDFTNDSParsingNodeNameTag()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSParsingOpenTag()V

    return-void
.end method

.method public static xdmDDFTNDSParsingNodeTag()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSParsingOpenTag()V

    return-void
.end method

.method public static xdmDDFTNDSParsingOpenTag()V
    .locals 8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetWbxmlSize()I

    move-result v2

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetWbxmlData()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetXMLData()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetXMLSize()I

    move-result v3

    invoke-static {v0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSManagePushTag(I)Z

    invoke-static {v0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSMakeOpenTagString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v6, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_0
    add-int v7, v3, v1

    invoke-static {v7}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetXMLSize(I)V

    invoke-static {v6}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetXMLData(Ljava/lang/String;)V

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetWbxmlSize(I)V

    invoke-static {v5}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetWbxmlData(Ljava/lang/String;)V

    const/4 v4, 0x0

    return-void
.end method

.method public static xdmDDFTNDSParsingPathTag()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSParsingOpenTag()V

    return-void
.end method

.method public static xdmDDFTNDSParsingRTPropertiesTag()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSParsingOpenTag()V

    return-void
.end method

.method public static xdmDDFTNDSParsingSyncMLTag()V
    .locals 4

    const/4 v2, 0x0

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetWbxmlSize()I

    move-result v1

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetWbxmlData()Ljava/lang/String;

    move-result-object v2

    const/16 v0, 0x88

    invoke-static {v0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSManagePushTag(I)Z

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetWbxmlSize(I)V

    invoke-static {v2}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetWbxmlData(Ljava/lang/String;)V

    return-void
.end method

.method public static xdmDDFTNDSParsingTypeTag()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSParsingOpenTag()V

    return-void
.end method

.method public static xdmDDFTNDSParsingValueTag()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSParsingOpenTag()V

    return-void
.end method

.method public static xdmDDFTNDSParsingVerdtdTag()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSParsingOpenTag()V

    return-void
.end method

.method public static xdmDDFTNDSParsingWbxmlHeader()V
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetWbxmlData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v0, 0x5

    invoke-static {v2}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetWbxmlData(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetWbxmlSize()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-static {v3}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetWbxmlSize(I)V

    return-void
.end method

.method public static xdmDDFTNDSProcessStringData()V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetWbxmlSize()I

    move-result v2

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetWbxmlData()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetXMLData()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetXMLSize()I

    move-result v3

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v5, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_0
    if-nez v1, :cond_0

    add-int v7, v3, v0

    add-int/lit8 v7, v7, -0x1

    invoke-static {v7}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetXMLSize(I)V

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetXMLData(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v7, v0, 0x1

    sub-int/2addr v2, v7

    invoke-static {v2}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetWbxmlSize(I)V

    invoke-static {v5}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSSetWbxmlData(Ljava/lang/String;)V

    return-void

    :cond_0
    int-to-char v7, v1

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v5, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_0
.end method

.method public static xdmDDFTNDSSetWbxmlData(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->gTndsData:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMTndsData;

    iput-object p0, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMTndsData;->m_szWbxmlData:Ljava/lang/String;

    return-void
.end method

.method public static xdmDDFTNDSSetWbxmlDataStart(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->gTndsData:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMTndsData;

    iput-object p0, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMTndsData;->m_szWbxmlDataStart:Ljava/lang/String;

    return-void
.end method

.method public static xdmDDFTNDSSetWbxmlSize(I)V
    .locals 1

    sget-object v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->gTndsData:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMTndsData;

    iput p0, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMTndsData;->nWbxmlDataSize:I

    return-void
.end method

.method public static xdmDDFTNDSSetXMLData(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->gTndsData:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMTndsData;

    iput-object p0, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMTndsData;->m_szXMLData:Ljava/lang/String;

    return-void
.end method

.method public static xdmDDFTNDSSetXMLDataStart(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->gTndsData:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMTndsData;

    iput-object p0, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMTndsData;->m_szXMLDataStart:Ljava/lang/String;

    return-void
.end method

.method public static xdmDDFTNDSSetXMLSize(I)V
    .locals 1

    sget-object v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->gTndsData:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMTndsData;

    iput p0, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMTndsData;->nXMLDataSize:I

    return-void
.end method

.method public static xdmDDFTNDSUderMgmtTreeTagParse()Z
    .locals 6

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetWbxmlSize()I

    move-result v0

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetWbxmlData()Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v0, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_1
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    aget-byte v4, v2, v3

    sparse-switch v4, :sswitch_data_0

    sget-object v4, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    sget-object v4, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    invoke-virtual {v4, v1}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_0
    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSParsingCloseTag()V

    :goto_2
    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetWbxmlSize()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetWbxmlData()Ljava/lang/String;

    move-result-object v1

    :goto_3
    goto :goto_0

    :sswitch_1
    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSProcessStringData()V

    goto :goto_2

    :sswitch_2
    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSParsingNodeTag()V

    goto :goto_2

    :sswitch_3
    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSParsingNodeNameTag()V

    goto :goto_2

    :sswitch_4
    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSParsingRTPropertiesTag()V

    goto :goto_2

    :sswitch_5
    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSParsingFormatTag()V

    goto :goto_2

    :sswitch_6
    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSParsingTypeTag()V

    goto :goto_2

    :sswitch_7
    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSParsingDDFNameTag()V

    goto :goto_2

    :sswitch_8
    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSParsingValueTag()V

    goto :goto_2

    :sswitch_9
    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSParsingMIMETag()V

    goto :goto_2

    :sswitch_a
    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSParsingAccessTypeTag()V

    goto :goto_2

    :sswitch_b
    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSParsingPathTag()V

    goto :goto_2

    :sswitch_c
    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSParsingACLTag()V

    goto :goto_2

    :sswitch_d
    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSParsingVerdtdTag()V

    goto :goto_2

    :sswitch_e
    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSParsingCodePage()Z

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    goto :goto_3

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_e
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0x45 -> :sswitch_a
        0x46 -> :sswitch_c
        0x51 -> :sswitch_7
        0x5c -> :sswitch_5
        0x61 -> :sswitch_9
        0x64 -> :sswitch_2
        0x66 -> :sswitch_3
        0x6c -> :sswitch_b
        0x6f -> :sswitch_4
        0x75 -> :sswitch_6
        0x76 -> :sswitch_8
        0x77 -> :sswitch_d
    .end sparse-switch
.end method

.method public static xdmDDFXmlTagCode(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->g_szDmXmlOmaTags:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    return v0

    :cond_1
    sget-object v1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->g_szDmXmlOmaTags:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static xdmDDFXmlTagParsing(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DM_Tree;)Z
    .locals 9

    if-nez p0, :cond_1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    return v3

    :cond_1
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DM_Tree;->childlist:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;

    const/4 v3, 0x1

    const-string v4, ""

    const-string v5, ""

    :goto_1
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DM_Tree;->object:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;

    iget-object v6, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->m_szTag:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    sget-object v6, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    const-string v7, "Tag:"

    invoke-virtual {v6, v7}, Lcom/sec/android/fota/common/log/LoggerData;->H(Ljava/lang/String;)V

    sget-object v6, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    iget-object v7, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->m_szTag:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/sec/android/fota/common/log/LoggerData;->H(Ljava/lang/String;)V

    :cond_2
    iget-object v6, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->m_szName:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    sget-object v6, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    const-string v7, "Name:"

    invoke-virtual {v6, v7}, Lcom/sec/android/fota/common/log/LoggerData;->H(Ljava/lang/String;)V

    sget-object v6, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    iget-object v7, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->m_szName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/sec/android/fota/common/log/LoggerData;->H(Ljava/lang/String;)V

    :cond_3
    iget-object v6, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->m_szPath:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    sget-object v6, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    const-string v7, "Path:"

    invoke-virtual {v6, v7}, Lcom/sec/android/fota/common/log/LoggerData;->H(Ljava/lang/String;)V

    sget-object v6, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    iget-object v7, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->m_szPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/sec/android/fota/common/log/LoggerData;->H(Ljava/lang/String;)V

    :cond_4
    iget-object v6, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->m_szData:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    sget-object v6, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    const-string v7, "Data:"

    invoke-virtual {v6, v7}, Lcom/sec/android/fota/common/log/LoggerData;->H(Ljava/lang/String;)V

    sget-object v6, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    iget-object v7, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->m_szData:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/sec/android/fota/common/log/LoggerData;->H(Ljava/lang/String;)V

    :cond_5
    iget-object v6, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->m_szTag:Ljava/lang/String;

    invoke-static {v6}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFXmlTagCode(Ljava/lang/String;)I

    move-result v2

    iget-object v6, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DM_Tree;->parent:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DM_Tree;

    if-nez v6, :cond_6

    const/4 v4, 0x0

    iget-object v6, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->m_szPath:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v4, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->m_szPath:Ljava/lang/String;

    :goto_2
    iget-object v6, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->m_szType:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->m_szType:Ljava/lang/String;

    invoke-static {v6}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFCheckInbox(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    iput-object v4, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->m_szPath:Ljava/lang/String;

    :cond_6
    sget-object v6, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->g_om:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmTree;

    iget-object v7, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->m_szPath:Ljava/lang/String;

    iget-object v8, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->m_szName:Ljava/lang/String;

    invoke-static {v6, v7, v8}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmAgentVerifyNewAccount(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmTree;Ljava/lang/String;Ljava/lang/String;)Z

    sparse-switch v2, :sswitch_data_0

    sget-object v6, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    sget-object v6, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    sget-object v7, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->g_szDmXmlOmaTags:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    :cond_7
    :goto_3
    :sswitch_0
    invoke-static {v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;->xdmListGetNextObj(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DM_Tree;

    goto/16 :goto_1

    :cond_8
    sget-object v6, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    const-string v7, "Path is NULL."

    invoke-virtual {v6, v7}, Lcom/sec/android/fota/common/log/LoggerData;->I(Ljava/lang/String;)V

    goto :goto_2

    :sswitch_1
    invoke-static {v0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFPrintNodePropert(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;)V

    invoke-static {v0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFCreateNodeToOM(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;)Z

    move-result v3

    if-nez v3, :cond_9

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_9
    iget-object v6, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->m_szPath:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    iget-object v6, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->m_szPath:Ljava/lang/String;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    iget-object v6, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->m_szPath:Ljava/lang/String;

    const-string v7, "./"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    const-string v4, "/"

    :cond_a
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->m_szName:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b

    iget-object v6, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->m_szName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_b
    invoke-static {p0, v4}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFCreateNode(Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DM_Tree;Ljava/lang/String;)Z

    const/16 v6, 0x2f

    invoke-static {v4, v6}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMMem;->xdmLibStrrchr(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    move-object v4, v5

    goto :goto_3

    :sswitch_data_0
    .sparse-switch
        0x1f -> :sswitch_0
        0x20 -> :sswitch_0
        0x22 -> :sswitch_0
        0x24 -> :sswitch_1
        0x37 -> :sswitch_0
    .end sparse-switch
.end method

.method public static xdmTndsParseFinish()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->gTndsData:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMTndsData;

    sput-object v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->gstTagManage:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMTndsTagManage;

    return-void
.end method

.method public static xdmTndsWbxmlParse(Ljava/lang/String;I)Ljava/lang/String;
    .locals 8

    const/4 v5, 0x0

    const-string v2, ""

    const/4 v0, 0x0

    const-string v3, ""

    invoke-static {p0, p1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSInitParse(Ljava/lang/String;I)V

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetWbxmlSize()I

    move-result v1

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetWbxmlData()Ljava/lang/String;

    move-result-object v2

    :goto_0
    if-eqz v1, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_0
    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSAppendSyncMLCloseTag()V

    :cond_1
    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetXMLData()Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    :goto_1
    return-object v5

    :cond_2
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    const/4 v6, 0x0

    aget-byte v6, v4, v6

    sparse-switch v6, :sswitch_data_0

    sget-object v6, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    sget-object v6, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/android/fota/common/log/LoggerData;->E(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_0
    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSParsingCodePage()Z

    :goto_2
    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetWbxmlSize()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSGetWbxmlData()Ljava/lang/String;

    move-result-object v2

    :goto_3
    goto :goto_0

    :sswitch_1
    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSParsingWbxmlHeader()V

    goto :goto_2

    :sswitch_2
    const/4 v0, 0x1

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSParsingSyncMLTag()V

    goto :goto_2

    :sswitch_3
    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSParsingMgmtTreeTag()V

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFTNDSUderMgmtTreeTagParse()Z

    goto :goto_2

    :cond_3
    move-object v2, v5

    goto :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0x60 -> :sswitch_3
        0x6d -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public characters([CII)V
    .locals 8

    const/4 v7, 0x0

    new-instance v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;-><init>()V

    sget-object v4, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "characters =     "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v6, v7, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/fota/common/log/LoggerData;->H(Ljava/lang/String;)V

    sget-object v4, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->CurXmlTree:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DM_Tree;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v4, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->CurXmlTree:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DM_Tree;

    iget-object v0, v4, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DM_Tree;->object:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;

    if-eqz v0, :cond_0

    iget v4, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->gTagCode:I

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object v2, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->m_szDDFName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    const-string v3, ""

    invoke-virtual {v2, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v4, v1, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    :goto_1
    iput-object v2, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->m_szDDFName:Ljava/lang/String;

    goto :goto_0

    :sswitch_1
    iget-object v2, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->m_szName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    const-string v3, ""

    invoke-virtual {v2, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v4, v1, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    :goto_2
    iput-object v2, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->m_szName:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v2, ""

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v4, v7, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :sswitch_2
    iget-object v2, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->m_szPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    const-string v3, ""

    invoke-virtual {v2, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v4, v1, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    :goto_3
    iput-object v2, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->m_szPath:Ljava/lang/String;

    goto/16 :goto_0

    :cond_3
    const-string v2, ""

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v4, v7, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_4
    const-string v2, ""

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v4, v7, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :sswitch_3
    iget-object v2, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->m_szMIME:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    const-string v3, ""

    invoke-virtual {v2, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v4, v1, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    :goto_4
    iput-object v2, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->m_szMIME:Ljava/lang/String;

    goto/16 :goto_0

    :cond_5
    const-string v2, ""

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v4, v7, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :sswitch_4
    iget-object v2, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->m_szType:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    const-string v3, ""

    invoke-virtual {v2, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v4, v1, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    :goto_5
    iput-object v2, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->m_szType:Ljava/lang/String;

    goto/16 :goto_0

    :cond_6
    const-string v2, ""

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v4, v7, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :sswitch_5
    iget-object v2, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->m_szData:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    const-string v3, ""

    invoke-virtual {v2, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v4, v1, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    :goto_6
    iput-object v2, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->m_szData:Ljava/lang/String;

    goto/16 :goto_0

    :cond_7
    const-string v2, ""

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v4, v7, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x12 -> :sswitch_5
        0x21 -> :sswitch_3
        0x26 -> :sswitch_1
        0x2c -> :sswitch_2
        0x35 -> :sswitch_4
        0x36 -> :sswitch_5
    .end sparse-switch
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->endDocument()V

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v5, 0x2

    const/4 v4, 0x1

    new-instance v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;-><init>()V

    sget-object v1, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "end =            "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/fota/common/log/LoggerData;->H(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->CurXmlTree:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DM_Tree;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->CurXmlTree:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DM_Tree;

    iget-object v0, v1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DM_Tree;->object:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;

    invoke-static {p2}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFXmlTagCode(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->gTagCode:I

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->gTagCode:I

    packed-switch v1, :pswitch_data_0

    :cond_2
    :goto_1
    :pswitch_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->gTagCode:I

    goto :goto_0

    :pswitch_1
    sget-object v1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->CurXmlTree:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DM_Tree;

    iget-object v1, v1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DM_Tree;->parent:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DM_Tree;

    sput-object v1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->CurXmlTree:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DM_Tree;

    goto :goto_1

    :pswitch_2
    iget-object v1, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->m_szName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Node"

    iput-object v1, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->m_szName:Ljava/lang/String;

    goto :goto_1

    :pswitch_3
    iget-object v1, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->m_szData:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "No Data"

    iput-object v1, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->m_szData:Ljava/lang/String;

    goto :goto_1

    :pswitch_4
    iget v1, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->acl:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->acl:I

    goto :goto_1

    :pswitch_5
    iget v1, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->acl:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->acl:I

    goto :goto_1

    :pswitch_6
    iget v1, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->acl:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->acl:I

    goto :goto_1

    :pswitch_7
    iget v1, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->acl:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->acl:I

    goto :goto_1

    :pswitch_8
    iget v1, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->acl:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->acl:I

    goto :goto_1

    :pswitch_9
    iput v5, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->scope:I

    goto :goto_1

    :pswitch_a
    iput v4, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->scope:I

    goto :goto_1

    :pswitch_b
    const/4 v1, 0x6

    iput v1, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->format:I

    goto :goto_1

    :pswitch_c
    const/4 v1, 0x4

    iput v1, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->format:I

    goto :goto_1

    :pswitch_d
    const/4 v1, 0x5

    iput v1, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->format:I

    goto :goto_1

    :pswitch_e
    const/16 v1, 0x8

    iput v1, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->format:I

    goto :goto_1

    :pswitch_f
    const/4 v1, 0x7

    iput v1, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->format:I

    goto :goto_1

    :pswitch_10
    const/4 v1, 0x3

    iput v1, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->format:I

    goto :goto_1

    :pswitch_11
    iput v5, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->format:I

    goto :goto_1

    :pswitch_12
    iput v4, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->format:I

    goto :goto_1

    :pswitch_13
    const/16 v1, 0x9

    iput v1, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->format:I

    goto :goto_1

    :pswitch_14
    const/16 v1, 0xa

    iput v1, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->format:I

    goto :goto_1

    :pswitch_15
    const/16 v1, 0xb

    iput v1, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->format:I

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_4
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_14
        :pswitch_0
        :pswitch_3
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_13
        :pswitch_0
        :pswitch_5
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_b
        :pswitch_2
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_15
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_e
    .end packed-switch
.end method

.method public startDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->startDocument()V

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-static {p2}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->xdmDDFXmlTagCode(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->gTagCode:I

    sget-object v3, Lcom/sec/android/fota/common/Log;->DATA:Lcom/sec/android/fota/common/log/LoggerData;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "start =          "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/fota/common/log/LoggerData;->H(Ljava/lang/String;)V

    sparse-switch v2, :sswitch_data_0

    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    new-instance v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;-><init>()V

    sget-object v3, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->CurXmlTree:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DM_Tree;

    iget-object v3, v3, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DM_Tree;->object:Ljava/lang/Object;

    if-nez v3, :cond_0

    sget-object v3, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->CurXmlTree:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DM_Tree;

    iput-object v0, v3, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DM_Tree;->object:Ljava/lang/Object;

    sget-object v3, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->CurXmlTree:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DM_Tree;

    sput-object v3, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->XmlTree:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DM_Tree;

    :goto_1
    iput-object p2, v0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DDFXmlElement;->m_szTag:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->CurXmlTree:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DM_Tree;

    iget-object v3, v3, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DM_Tree;->childlist:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;

    if-nez v3, :cond_1

    sget-object v3, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->CurXmlTree:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DM_Tree;

    invoke-static {}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;->xdmListCreateLinkedList()Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;

    move-result-object v4

    iput-object v4, v3, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DM_Tree;->childlist:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;

    :cond_1
    new-instance v1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DM_Tree;

    invoke-direct {v1}, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DM_Tree;-><init>()V

    sget-object v3, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->CurXmlTree:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DM_Tree;

    iput-object v3, v1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DM_Tree;->parent:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DM_Tree;

    iput-object v0, v1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DM_Tree;->object:Ljava/lang/Object;

    sget-object v3, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->CurXmlTree:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DM_Tree;

    iget-object v3, v3, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DM_Tree;->childlist:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;

    invoke-static {v3, v1}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;->xdmListAddObjAtLast(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMLinkedList;Ljava/lang/Object;)V

    sput-object v1, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMDDFParser;->CurXmlTree:Lcom/samsung/android/app/omcagent/dm/eng/parser/XDM_DM_Tree;

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x16 -> :sswitch_0
        0x24 -> :sswitch_1
    .end sparse-switch
.end method
