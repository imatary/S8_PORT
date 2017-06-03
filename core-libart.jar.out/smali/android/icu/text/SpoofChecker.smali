.class public Landroid/icu/text/SpoofChecker;
.super Ljava/lang/Object;
.source "SpoofChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/SpoofChecker$Builder;,
        Landroid/icu/text/SpoofChecker$CheckResult;,
        Landroid/icu/text/SpoofChecker$RestrictionLevel;,
        Landroid/icu/text/SpoofChecker$ScriptSet;,
        Landroid/icu/text/SpoofChecker$SpoofData;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field public static final ALL_CHECKS:I = -0x1

.field public static final ANY_CASE:I = 0x8

.field public static final CHAR_LIMIT:I = 0x40

.field public static final INCLUSION:Landroid/icu/text/UnicodeSet;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final INVISIBLE:I = 0x20

.field static final KEY_LENGTH_SHIFT:I = 0x1d

.field static final KEY_MULTIPLE_VALUES:I = 0x10000000

.field static final MAGIC:I = 0x3845fdef

.field static final MA_TABLE_FLAG:I = 0x8000000

.field public static final MIXED_NUMBERS:I = 0x80
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MIXED_SCRIPT_CONFUSABLE:I = 0x2

.field static final ML_TABLE_FLAG:I = 0x4000000

.field public static final RECOMMENDED:Landroid/icu/text/UnicodeSet;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RESTRICTION_LEVEL:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final SA_TABLE_FLAG:I = 0x2000000

.field public static final SINGLE_SCRIPT:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SINGLE_SCRIPT_CONFUSABLE:I = 0x1

.field static final SL_TABLE_FLAG:I = 0x1000000

.field public static final WHOLE_SCRIPT_CONFUSABLE:I = 0x4

.field private static nfdNormalizer:Landroid/icu/text/Normalizer2;


# instance fields
.field private fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

.field private fAllowedLocales:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/icu/util/ULocale;",
            ">;"
        }
    .end annotation
.end field

.field private fCachedIdentifierInfo:Landroid/icu/text/IdentifierInfo;

.field private fChecks:I

.field private fRestrictionLevel:Landroid/icu/text/SpoofChecker$RestrictionLevel;

.field private fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;


# direct methods
.method static synthetic -get0(Landroid/icu/text/SpoofChecker;)Landroid/icu/text/UnicodeSet;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/SpoofChecker;->fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

    return-object v0
.end method

.method static synthetic -get1(Landroid/icu/text/SpoofChecker;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/SpoofChecker;->fAllowedLocales:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic -get2(Landroid/icu/text/SpoofChecker;)I
    .locals 1

    iget v0, p0, Landroid/icu/text/SpoofChecker;->fChecks:I

    return v0
.end method

.method static synthetic -get3(Landroid/icu/text/SpoofChecker;)Landroid/icu/text/SpoofChecker$RestrictionLevel;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/SpoofChecker;->fRestrictionLevel:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    return-object v0
.end method

.method static synthetic -get4(Landroid/icu/text/SpoofChecker;)Landroid/icu/text/SpoofChecker$SpoofData;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/SpoofChecker;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    return-object v0
.end method

.method static synthetic -set0(Landroid/icu/text/SpoofChecker;Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;
    .locals 0

    iput-object p1, p0, Landroid/icu/text/SpoofChecker;->fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

    return-object p1
.end method

.method static synthetic -set1(Landroid/icu/text/SpoofChecker;Ljava/util/Set;)Ljava/util/Set;
    .locals 0

    iput-object p1, p0, Landroid/icu/text/SpoofChecker;->fAllowedLocales:Ljava/util/Set;

    return-object p1
.end method

.method static synthetic -set2(Landroid/icu/text/SpoofChecker;I)I
    .locals 0

    iput p1, p0, Landroid/icu/text/SpoofChecker;->fChecks:I

    return p1
.end method

.method static synthetic -set3(Landroid/icu/text/SpoofChecker;Landroid/icu/text/SpoofChecker$RestrictionLevel;)Landroid/icu/text/SpoofChecker$RestrictionLevel;
    .locals 0

    iput-object p1, p0, Landroid/icu/text/SpoofChecker;->fRestrictionLevel:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    return-object p1
.end method

.method static synthetic -set4(Landroid/icu/text/SpoofChecker;Landroid/icu/text/SpoofChecker$SpoofData;)Landroid/icu/text/SpoofChecker$SpoofData;
    .locals 0

    iput-object p1, p0, Landroid/icu/text/SpoofChecker;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 2

    const-class v0, Landroid/icu/text/SpoofChecker;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/icu/text/SpoofChecker;->-assertionsDisabled:Z

    new-instance v0, Landroid/icu/text/UnicodeSet;

    const-string/jumbo v1, "[\\u0027\\u002D-\\u002E\\u003A\\u00B7\\u0375\\u058A\\u05F3-\\u05F4\\u06FD-\\u06FE\\u0F0B\\u200C-\\u200D\\u2010\\u2019\\u2027\\u30A0\\u30FB]"

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Landroid/icu/text/SpoofChecker;->INCLUSION:Landroid/icu/text/UnicodeSet;

    new-instance v0, Landroid/icu/text/UnicodeSet;

    const-string/jumbo v1, "[\\u0030-\\u0039\\u0041-\\u005A\\u005F\\u0061-\\u007A\\u00C0-\\u00D6\\u00D8-\\u00F6\\u00F8-\\u0131\\u0134-\\u013E\\u0141-\\u0148\\u014A-\\u017E\\u018F\\u01A0-\\u01A1\\u01AF-\\u01B0\\u01CD-\\u01DC\\u01DE-\\u01E3\\u01E6-\\u01F0\\u01F4-\\u01F5\\u01F8-\\u021B\\u021E-\\u021F\\u0226-\\u0233\\u0259\\u02BB-\\u02BC\\u02EC\\u0300-\\u0304\\u0306-\\u030C\\u030F-\\u0311\\u0313-\\u0314\\u031B\\u0323-\\u0328\\u032D-\\u032E\\u0330-\\u0331\\u0335\\u0338-\\u0339\\u0342\\u0345\\u037B-\\u037D\\u0386\\u0388-\\u038A\\u038C\\u038E-\\u03A1\\u03A3-\\u03CE\\u03FC-\\u045F\\u048A-\\u0529\\u052E-\\u052F\\u0531-\\u0556\\u0559\\u0561-\\u0586\\u05B4\\u05D0-\\u05EA\\u05F0-\\u05F2\\u0620-\\u063F\\u0641-\\u0655\\u0660-\\u0669\\u0670-\\u0672\\u0674\\u0679-\\u068D\\u068F-\\u06D3\\u06D5\\u06E5-\\u06E6\\u06EE-\\u06FC\\u06FF\\u0750-\\u07B1\\u08A0-\\u08AC\\u08B2\\u0901-\\u094D\\u094F-\\u0950\\u0956-\\u0957\\u0960-\\u0963\\u0966-\\u096F\\u0971-\\u0977\\u0979-\\u097F\\u0981-\\u0983\\u0985-\\u098C\\u098F-\\u0990\\u0993-\\u09A8\\u09AA-\\u09B0\\u09B2\\u09B6-\\u09B9\\u09BC-\\u09C4\\u09C7-\\u09C8\\u09CB-\\u09CE\\u09D7\\u09E0-\\u09E3\\u09E6-\\u09F1\\u0A01-\\u0A03\\u0A05-\\u0A0A\\u0A0F-\\u0A10\\u0A13-\\u0A28\\u0A2A-\\u0A30\\u0A32\\u0A35\\u0A38-\\u0A39\\u0A3C\\u0A3E-\\u0A42\\u0A47-\\u0A48\\u0A4B-\\u0A4D\\u0A5C\\u0A66-\\u0A74\\u0A81-\\u0A83\\u0A85-\\u0A8D\\u0A8F-\\u0A91\\u0A93-\\u0AA8\\u0AAA-\\u0AB0\\u0AB2-\\u0AB3\\u0AB5-\\u0AB9\\u0ABC-\\u0AC5\\u0AC7-\\u0AC9\\u0ACB-\\u0ACD\\u0AD0\\u0AE0-\\u0AE3\\u0AE6-\\u0AEF\\u0B01-\\u0B03\\u0B05-\\u0B0C\\u0B0F-\\u0B10\\u0B13-\\u0B28\\u0B2A-\\u0B30\\u0B32-\\u0B33\\u0B35-\\u0B39\\u0B3C-\\u0B43\\u0B47-\\u0B48\\u0B4B-\\u0B4D\\u0B56-\\u0B57\\u0B5F-\\u0B61\\u0B66-\\u0B6F\\u0B71\\u0B82-\\u0B83\\u0B85-\\u0B8A\\u0B8E-\\u0B90\\u0B92-\\u0B95\\u0B99-\\u0B9A\\u0B9C\\u0B9E-\\u0B9F\\u0BA3-\\u0BA4\\u0BA8-\\u0BAA\\u0BAE-\\u0BB9\\u0BBE-\\u0BC2\\u0BC6-\\u0BC8\\u0BCA-\\u0BCD\\u0BD0\\u0BD7\\u0BE6-\\u0BEF\\u0C01-\\u0C03\\u0C05-\\u0C0C\\u0C0E-\\u0C10\\u0C12-\\u0C28\\u0C2A-\\u0C33\\u0C35-\\u0C39\\u0C3D-\\u0C44\\u0C46-\\u0C48\\u0C4A-\\u0C4D\\u0C55-\\u0C56\\u0C60-\\u0C61\\u0C66-\\u0C6F\\u0C82-\\u0C83\\u0C85-\\u0C8C\\u0C8E-\\u0C90\\u0C92-\\u0CA8\\u0CAA-\\u0CB3\\u0CB5-\\u0CB9\\u0CBC-\\u0CC4\\u0CC6-\\u0CC8\\u0CCA-\\u0CCD\\u0CD5-\\u0CD6\\u0CE0-\\u0CE3\\u0CE6-\\u0CEF\\u0CF1-\\u0CF2\\u0D02-\\u0D03\\u0D05-\\u0D0C\\u0D0E-\\u0D10\\u0D12-\\u0D3A\\u0D3D-\\u0D43\\u0D46-\\u0D48\\u0D4A-\\u0D4E\\u0D57\\u0D60-\\u0D61\\u0D66-\\u0D6F\\u0D7A-\\u0D7F\\u0D82-\\u0D83\\u0D85-\\u0D8E\\u0D91-\\u0D96\\u0D9A-\\u0DA5\\u0DA7-\\u0DB1\\u0DB3-\\u0DBB\\u0DBD\\u0DC0-\\u0DC6\\u0DCA\\u0DCF-\\u0DD4\\u0DD6\\u0DD8-\\u0DDE\\u0DF2\\u0E01-\\u0E32\\u0E34-\\u0E3A\\u0E40-\\u0E4E\\u0E50-\\u0E59\\u0E81-\\u0E82\\u0E84\\u0E87-\\u0E88\\u0E8A\\u0E8D\\u0E94-\\u0E97\\u0E99-\\u0E9F\\u0EA1-\\u0EA3\\u0EA5\\u0EA7\\u0EAA-\\u0EAB\\u0EAD-\\u0EB2\\u0EB4-\\u0EB9\\u0EBB-\\u0EBD\\u0EC0-\\u0EC4\\u0EC6\\u0EC8-\\u0ECD\\u0ED0-\\u0ED9\\u0EDE-\\u0EDF\\u0F00\\u0F20-\\u0F29\\u0F35\\u0F37\\u0F3E-\\u0F42\\u0F44-\\u0F47\\u0F49-\\u0F4C\\u0F4E-\\u0F51\\u0F53-\\u0F56\\u0F58-\\u0F5B\\u0F5D-\\u0F68\\u0F6A-\\u0F6C\\u0F71-\\u0F72\\u0F74\\u0F7A-\\u0F80\\u0F82-\\u0F84\\u0F86-\\u0F92\\u0F94-\\u0F97\\u0F99-\\u0F9C\\u0F9E-\\u0FA1\\u0FA3-\\u0FA6\\u0FA8-\\u0FAB\\u0FAD-\\u0FB8\\u0FBA-\\u0FBC\\u0FC6\\u1000-\\u1049\\u1050-\\u109D\\u10C7\\u10CD\\u10D0-\\u10F0\\u10F7-\\u10FA\\u10FD-\\u10FF\\u1200-\\u1248\\u124A-\\u124D\\u1250-\\u1256\\u1258\\u125A-\\u125D\\u1260-\\u1288\\u128A-\\u128D\\u1290-\\u12B0\\u12B2-\\u12B5\\u12B8-\\u12BE\\u12C0\\u12C2-\\u12C5\\u12C8-\\u12D6\\u12D8-\\u1310\\u1312-\\u1315\\u1318-\\u135A\\u135D-\\u135F\\u1380-\\u138F\\u1780-\\u17A2\\u17A5-\\u17A7\\u17A9-\\u17B3\\u17B6-\\u17CA\\u17D2\\u17D7\\u17DC\\u17E0-\\u17E9\\u1E00-\\u1E99\\u1E9E\\u1EA0-\\u1EF9\\u1F00-\\u1F15\\u1F18-\\u1F1D\\u1F20-\\u1F45\\u1F48-\\u1F4D\\u1F50-\\u1F57\\u1F59\\u1F5B\\u1F5D\\u1F5F-\\u1F70\\u1F72\\u1F74\\u1F76\\u1F78\\u1F7A\\u1F7C\\u1F80-\\u1FB4\\u1FB6-\\u1FBA\\u1FBC\\u1FC2-\\u1FC4\\u1FC6-\\u1FC8\\u1FCA\\u1FCC\\u1FD0-\\u1FD2\\u1FD6-\\u1FDA\\u1FE0-\\u1FE2\\u1FE4-\\u1FEA\\u1FEC\\u1FF2-\\u1FF4\\u1FF6-\\u1FF8\\u1FFA\\u1FFC\\u2D27\\u2D2D\\u2D80-\\u2D96\\u2DA0-\\u2DA6\\u2DA8-\\u2DAE\\u2DB0-\\u2DB6\\u2DB8-\\u2DBE\\u2DC0-\\u2DC6\\u2DC8-\\u2DCE\\u2DD0-\\u2DD6\\u2DD8-\\u2DDE\\u3005-\\u3007\\u3041-\\u3096\\u3099-\\u309A\\u309D-\\u309E\\u30A1-\\u30FA\\u30FC-\\u30FE\\u3105-\\u312D\\u31A0-\\u31BA\\u3400-\\u4DB5\\u4E00-\\u9FD5\\uA660-\\uA661\\uA674-\\uA67B\\uA67F\\uA69F\\uA717-\\uA71F\\uA788\\uA78D-\\uA78E\\uA790-\\uA793\\uA7A0-\\uA7AA\\uA7FA\\uA9E7-\\uA9FE\\uAA60-\\uAA76\\uAA7A-\\uAA7F\\uAB01-\\uAB06\\uAB09-\\uAB0E\\uAB11-\\uAB16\\uAB20-\\uAB26\\uAB28-\\uAB2E\\uAC00-\\uD7A3\\uFA0E-\\uFA0F\\uFA11\\uFA13-\\uFA14\\uFA1F\\uFA21\\uFA23-\\uFA24\\uFA27-\\uFA29\\U00020000-\\U0002A6D6\\U0002A700-\\U0002B734\\U0002B740-\\U0002B81D\\U0002B820-\\U0002CEA1]"

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Landroid/icu/text/SpoofChecker;->RECOMMENDED:Landroid/icu/text/UnicodeSet;

    invoke-static {}, Landroid/icu/text/Normalizer2;->getNFDInstance()Landroid/icu/text/Normalizer2;

    move-result-object v0

    sput-object v0, Landroid/icu/text/SpoofChecker;->nfdNormalizer:Landroid/icu/text/Normalizer2;

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/SpoofChecker;->fCachedIdentifierInfo:Landroid/icu/text/IdentifierInfo;

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/text/SpoofChecker;)V
    .locals 0

    invoke-direct {p0}, Landroid/icu/text/SpoofChecker;-><init>()V

    return-void
.end method

.method private confusableLookup(IILjava/lang/StringBuilder;)V
    .locals 22

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/SpoofChecker;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUKeys:[I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v12, v0

    const/4 v8, 0x0

    :goto_0
    sub-int v18, v12, v13

    div-int/lit8 v6, v18, 0x2

    add-int v14, v13, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/SpoofChecker;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUKeys:[I

    move-object/from16 v18, v0

    aget v18, v18, v14

    const v19, 0x1fffff

    and-int v15, v18, v19

    move/from16 v0, p1

    if-ne v0, v15, :cond_1

    const/4 v8, 0x1

    :cond_0
    if-nez v8, :cond_3

    move-object/from16 v0, p3

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    return-void

    :cond_1
    move/from16 v0, p1

    if-ge v0, v15, :cond_2

    move v12, v14

    :goto_1
    if-ge v13, v12, :cond_0

    goto :goto_0

    :cond_2
    add-int/lit8 v13, v14, 0x1

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/SpoofChecker;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUKeys:[I

    move-object/from16 v18, v0

    aget v18, v18, v14

    const/high16 v19, -0x1000000

    and-int v10, v18, v19

    and-int v18, v10, p2

    if-nez v18, :cond_8

    const/high16 v18, 0x10000000

    and-int v18, v18, v10

    if-eqz v18, :cond_5

    add-int/lit8 v4, v14, -0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/SpoofChecker;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUKeys:[I

    move-object/from16 v18, v0

    aget v18, v18, v4

    const v19, 0xffffff

    and-int v18, v18, v19

    move/from16 v0, v18

    move/from16 v1, p1

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/SpoofChecker;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUKeys:[I

    move-object/from16 v18, v0

    aget v18, v18, v4

    const/high16 v19, -0x1000000

    and-int v10, v18, v19

    and-int v18, v10, p2

    if-eqz v18, :cond_6

    move v14, v4

    const/4 v9, 0x1

    :cond_4
    if-nez v9, :cond_5

    add-int/lit8 v4, v14, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/SpoofChecker;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUKeys:[I

    move-object/from16 v18, v0

    aget v18, v18, v4

    const v19, 0xffffff

    and-int v18, v18, v19

    move/from16 v0, v18

    move/from16 v1, p1

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/SpoofChecker;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUKeys:[I

    move-object/from16 v18, v0

    aget v18, v18, v4

    const/high16 v19, -0x1000000

    and-int v10, v18, v19

    and-int v18, v10, p2

    if-eqz v18, :cond_7

    move v14, v4

    const/4 v9, 0x1

    :cond_5
    if-nez v9, :cond_8

    move-object/from16 v0, p3

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    return-void

    :cond_6
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_8
    invoke-static {v10}, Landroid/icu/text/SpoofChecker;->getKeyLength(I)I

    move-result v18

    add-int/lit8 v16, v18, 0x1

    move v11, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/SpoofChecker;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUValues:[S

    move-object/from16 v18, v0

    aget-short v17, v18, v11

    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    :cond_9
    const/16 v18, 0x4

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/SpoofChecker;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUStringLengths:[Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;

    move-object/from16 v19, v0

    const/16 v18, 0x0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    :goto_4
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_a

    aget-object v7, v19, v18

    iget v0, v7, Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;->fLastString:I

    move/from16 v21, v0

    move/from16 v0, v21

    move/from16 v1, v17

    if-lt v0, v1, :cond_b

    iget v0, v7, Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;->fStrLength:I

    move/from16 v16, v0

    const/4 v5, 0x1

    :cond_a
    sget-boolean v18, Landroid/icu/text/SpoofChecker;->-assertionsDisabled:Z

    if-nez v18, :cond_c

    if-nez v5, :cond_c

    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    :cond_b
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/SpoofChecker;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUStrings:Ljava/lang/String;

    move-object/from16 v18, v0

    add-int v19, v17, v16

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    move/from16 v2, v17

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    return-void
.end method

.method private getIdentifierInfo()Landroid/icu/text/IdentifierInfo;
    .locals 2

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/icu/text/SpoofChecker;->fCachedIdentifierInfo:Landroid/icu/text/IdentifierInfo;

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/icu/text/SpoofChecker;->fCachedIdentifierInfo:Landroid/icu/text/IdentifierInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-nez v0, :cond_0

    new-instance v0, Landroid/icu/text/IdentifierInfo;

    invoke-direct {v0}, Landroid/icu/text/IdentifierInfo;-><init>()V

    :cond_0
    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method static final getKeyLength(I)I
    .locals 1

    shr-int/lit8 v0, p0, 0x1d

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method private releaseIdentifierInfo(Landroid/icu/text/IdentifierInfo;)V
    .locals 1

    if-eqz p1, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/icu/text/SpoofChecker;->fCachedIdentifierInfo:Landroid/icu/text/IdentifierInfo;

    if-nez v0, :cond_0

    iput-object p1, p0, Landroid/icu/text/SpoofChecker;->fCachedIdentifierInfo:Landroid/icu/text/IdentifierInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private wholeScriptCheck(Ljava/lang/CharSequence;Landroid/icu/text/SpoofChecker$ScriptSet;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x0

    iget v5, p0, Landroid/icu/text/SpoofChecker;->fChecks:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/icu/text/SpoofChecker;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    iget-object v4, v5, Landroid/icu/text/SpoofChecker$SpoofData;->fAnyCaseTrie:Landroid/icu/impl/Trie2;

    :goto_0
    invoke-virtual {p2}, Landroid/icu/text/SpoofChecker$ScriptSet;->setAll()V

    :cond_0
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v3, v5, :cond_5

    invoke-static {p1, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    invoke-static {p1, v3, v6}, Ljava/lang/Character;->offsetByCodePoints(Ljava/lang/CharSequence;II)I

    move-result v3

    invoke-virtual {v4, v0}, Landroid/icu/impl/Trie2;->get(I)I

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v0}, Landroid/icu/lang/UScript;->getScript(I)I

    move-result v1

    sget-boolean v5, Landroid/icu/text/SpoofChecker;->-assertionsDisabled:Z

    if-nez v5, :cond_3

    if-le v1, v6, :cond_2

    move v5, v6

    :goto_2
    if-nez v5, :cond_3

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :cond_1
    iget-object v5, p0, Landroid/icu/text/SpoofChecker;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    iget-object v4, v5, Landroid/icu/text/SpoofChecker$SpoofData;->fLowerCaseTrie:Landroid/icu/impl/Trie2;

    goto :goto_0

    :cond_2
    move v5, v7

    goto :goto_2

    :cond_3
    invoke-virtual {p2, v1}, Landroid/icu/text/SpoofChecker$ScriptSet;->intersect(I)V

    goto :goto_1

    :cond_4
    if-eq v2, v6, :cond_0

    iget-object v5, p0, Landroid/icu/text/SpoofChecker;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    iget-object v5, v5, Landroid/icu/text/SpoofChecker$SpoofData;->fScriptSets:[Landroid/icu/text/SpoofChecker$ScriptSet;

    aget-object v5, v5, v2

    invoke-virtual {p2, v5}, Landroid/icu/text/SpoofChecker$ScriptSet;->intersect(Landroid/icu/text/SpoofChecker$ScriptSet;)V

    goto :goto_1

    :cond_5
    return-void
.end method


# virtual methods
.method public areConfusable(Ljava/lang/String;Ljava/lang/String;)I
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    iget v10, p0, Landroid/icu/text/SpoofChecker;->fChecks:I

    and-int/lit8 v10, v10, 0x7

    if-nez v10, :cond_0

    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v11, "No confusable checks are enabled."

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_0
    iget v10, p0, Landroid/icu/text/SpoofChecker;->fChecks:I

    and-int/lit8 v0, v10, 0x8

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/icu/text/SpoofChecker;->getIdentifierInfo()Landroid/icu/text/IdentifierInfo;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/icu/text/IdentifierInfo;->setIdentifier(Ljava/lang/String;)Landroid/icu/text/IdentifierInfo;

    invoke-virtual {v1}, Landroid/icu/text/IdentifierInfo;->getScriptCount()I

    move-result v5

    invoke-virtual {v1}, Landroid/icu/text/IdentifierInfo;->getScripts()Ljava/util/BitSet;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v4

    invoke-virtual {v1, p2}, Landroid/icu/text/IdentifierInfo;->setIdentifier(Ljava/lang/String;)Landroid/icu/text/IdentifierInfo;

    invoke-virtual {v1}, Landroid/icu/text/IdentifierInfo;->getScriptCount()I

    move-result v8

    invoke-virtual {v1}, Landroid/icu/text/IdentifierInfo;->getScripts()Ljava/util/BitSet;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v7

    invoke-direct {p0, v1}, Landroid/icu/text/SpoofChecker;->releaseIdentifierInfo(Landroid/icu/text/IdentifierInfo;)V

    iget v10, p0, Landroid/icu/text/SpoofChecker;->fChecks:I

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_1

    if-gt v5, v12, :cond_1

    if-gt v8, v12, :cond_1

    if-ne v4, v7, :cond_1

    or-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/icu/text/SpoofChecker;->getSkeleton(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v0, p2}, Landroid/icu/text/SpoofChecker;->getSkeleton(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v3, 0x1

    :cond_1
    and-int/lit8 v10, v3, 0x1

    if-eqz v10, :cond_2

    return v3

    :cond_2
    if-gt v5, v12, :cond_6

    if-gt v8, v12, :cond_6

    iget v10, p0, Landroid/icu/text/SpoofChecker;->fChecks:I

    and-int/lit8 v10, v10, 0x4

    if-eqz v10, :cond_5

    const/4 v2, 0x1

    :goto_0
    iget v10, p0, Landroid/icu/text/SpoofChecker;->fChecks:I

    and-int/lit8 v10, v10, 0x2

    if-nez v10, :cond_3

    if-eqz v2, :cond_4

    :cond_3
    and-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, v0, p1}, Landroid/icu/text/SpoofChecker;->getSkeleton(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v0, p2}, Landroid/icu/text/SpoofChecker;->getSkeleton(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    or-int/lit8 v3, v3, 0x2

    if-eqz v2, :cond_4

    or-int/lit8 v3, v3, 0x4

    :cond_4
    return v3

    :cond_5
    const/4 v2, 0x0

    goto :goto_0

    :cond_6
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v3, 0x0

    instance-of v1, p1, Landroid/icu/text/SpoofChecker;

    if-nez v1, :cond_0

    return v3

    :cond_0
    move-object v0, p1

    nop

    nop

    iget-object v1, p0, Landroid/icu/text/SpoofChecker;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    iget-object v2, v0, Landroid/icu/text/SpoofChecker;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Landroid/icu/text/SpoofChecker;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/icu/text/SpoofChecker;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    iget-object v2, v0, Landroid/icu/text/SpoofChecker;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    invoke-virtual {v1, v2}, Landroid/icu/text/SpoofChecker$SpoofData;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget v1, p0, Landroid/icu/text/SpoofChecker;->fChecks:I

    iget v2, v0, Landroid/icu/text/SpoofChecker;->fChecks:I

    if-eq v1, v2, :cond_3

    return v3

    :cond_2
    return v3

    :cond_3
    iget-object v1, p0, Landroid/icu/text/SpoofChecker;->fAllowedLocales:Ljava/util/Set;

    iget-object v2, v0, Landroid/icu/text/SpoofChecker;->fAllowedLocales:Ljava/util/Set;

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Landroid/icu/text/SpoofChecker;->fAllowedLocales:Ljava/util/Set;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/icu/text/SpoofChecker;->fAllowedLocales:Ljava/util/Set;

    iget-object v2, v0, Landroid/icu/text/SpoofChecker;->fAllowedLocales:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_4
    iget-object v1, p0, Landroid/icu/text/SpoofChecker;->fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

    iget-object v2, v0, Landroid/icu/text/SpoofChecker;->fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Landroid/icu/text/SpoofChecker;->fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/icu/text/SpoofChecker;->fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

    iget-object v2, v0, Landroid/icu/text/SpoofChecker;->fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_5
    iget-object v1, p0, Landroid/icu/text/SpoofChecker;->fRestrictionLevel:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    iget-object v2, v0, Landroid/icu/text/SpoofChecker;->fRestrictionLevel:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    if-eq v1, v2, :cond_8

    return v3

    :cond_6
    return v3

    :cond_7
    return v3

    :cond_8
    const/4 v1, 0x1

    return v1
.end method

.method public failsChecks(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/icu/text/SpoofChecker;->failsChecks(Ljava/lang/String;Landroid/icu/text/SpoofChecker$CheckResult;)Z

    move-result v0

    return v0
.end method

.method public failsChecks(Ljava/lang/String;Landroid/icu/text/SpoofChecker$CheckResult;)Z
    .locals 17

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v11, 0x0

    if-eqz p2, :cond_0

    const/4 v15, 0x0

    move-object/from16 v0, p2

    iput v15, v0, Landroid/icu/text/SpoofChecker$CheckResult;->position:I

    const/4 v15, 0x0

    move-object/from16 v0, p2

    iput-object v15, v0, Landroid/icu/text/SpoofChecker$CheckResult;->numerics:Landroid/icu/text/UnicodeSet;

    const/4 v15, 0x0

    move-object/from16 v0, p2

    iput-object v15, v0, Landroid/icu/text/SpoofChecker$CheckResult;->restrictionLevel:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    :cond_0
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Landroid/icu/text/SpoofChecker;->fChecks:I

    and-int/lit16 v15, v15, 0x90

    if-eqz v15, :cond_1

    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SpoofChecker;->getIdentifierInfo()Landroid/icu/text/IdentifierInfo;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/icu/text/IdentifierInfo;->setIdentifier(Ljava/lang/String;)Landroid/icu/text/IdentifierInfo;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/SpoofChecker;->fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/icu/text/IdentifierInfo;->setIdentifierProfile(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/IdentifierInfo;

    move-result-object v6

    :cond_1
    move-object/from16 v0, p0

    iget v15, v0, Landroid/icu/text/SpoofChecker;->fChecks:I

    and-int/lit8 v15, v15, 0x10

    if-eqz v15, :cond_3

    invoke-virtual {v6}, Landroid/icu/text/IdentifierInfo;->getRestrictionLevel()Landroid/icu/text/SpoofChecker$RestrictionLevel;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/icu/text/SpoofChecker;->fRestrictionLevel:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    invoke-virtual {v14, v15}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v15

    if-lez v15, :cond_2

    const/16 v11, 0x10

    :cond_2
    if-eqz p2, :cond_3

    move-object/from16 v0, p2

    iput-object v14, v0, Landroid/icu/text/SpoofChecker$CheckResult;->restrictionLevel:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    :cond_3
    move-object/from16 v0, p0

    iget v15, v0, Landroid/icu/text/SpoofChecker;->fChecks:I

    and-int/lit16 v15, v15, 0x80

    if-eqz v15, :cond_5

    invoke-virtual {v6}, Landroid/icu/text/IdentifierInfo;->getNumerics()Landroid/icu/text/UnicodeSet;

    move-result-object v10

    invoke-virtual {v10}, Landroid/icu/text/UnicodeSet;->size()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_4

    or-int/lit16 v11, v11, 0x80

    :cond_4
    if-eqz p2, :cond_5

    move-object/from16 v0, p2

    iput-object v10, v0, Landroid/icu/text/SpoofChecker$CheckResult;->numerics:Landroid/icu/text/UnicodeSet;

    :cond_5
    move-object/from16 v0, p0

    iget v15, v0, Landroid/icu/text/SpoofChecker;->fChecks:I

    and-int/lit8 v15, v15, 0x40

    if-eqz v15, :cond_7

    const/4 v5, 0x0

    :cond_6
    if-ge v5, v7, :cond_7

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    const/4 v15, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v5, v15}, Ljava/lang/Character;->offsetByCodePoints(Ljava/lang/CharSequence;II)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/icu/text/SpoofChecker;->fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v15, v1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v15

    if-nez v15, :cond_6

    or-int/lit8 v11, v11, 0x40

    :cond_7
    move-object/from16 v0, p0

    iget v15, v0, Landroid/icu/text/SpoofChecker;->fChecks:I

    and-int/lit8 v15, v15, 0x26

    if-eqz v15, :cond_f

    sget-object v15, Landroid/icu/text/SpoofChecker;->nfdNormalizer:Landroid/icu/text/Normalizer2;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget v15, v0, Landroid/icu/text/SpoofChecker;->fChecks:I

    and-int/lit8 v15, v15, 0x20

    if-eqz v15, :cond_c

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v8, Landroid/icu/text/UnicodeSet;

    invoke-direct {v8}, Landroid/icu/text/UnicodeSet;-><init>()V

    const/4 v5, 0x0

    :cond_8
    :goto_0
    if-ge v5, v7, :cond_c

    invoke-static {v9, v5}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    const/4 v15, 0x1

    invoke-static {v9, v5, v15}, Ljava/lang/Character;->offsetByCodePoints(Ljava/lang/CharSequence;II)I

    move-result v5

    invoke-static {v1}, Ljava/lang/Character;->getType(I)I

    move-result v15

    const/16 v16, 0x6

    move/from16 v0, v16

    if-eq v15, v0, :cond_9

    const/4 v3, 0x0

    if-eqz v4, :cond_8

    invoke-virtual {v8}, Landroid/icu/text/UnicodeSet;->clear()Landroid/icu/text/UnicodeSet;

    const/4 v4, 0x0

    goto :goto_0

    :cond_9
    if-nez v3, :cond_a

    move v3, v1

    goto :goto_0

    :cond_a
    if-nez v4, :cond_b

    invoke-virtual {v8, v3}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/4 v4, 0x1

    :cond_b
    invoke-virtual {v8, v1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v15

    if-eqz v15, :cond_11

    or-int/lit8 v11, v11, 0x20

    :cond_c
    move-object/from16 v0, p0

    iget v15, v0, Landroid/icu/text/SpoofChecker;->fChecks:I

    and-int/lit8 v15, v15, 0x6

    if-eqz v15, :cond_f

    if-nez v6, :cond_d

    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SpoofChecker;->getIdentifierInfo()Landroid/icu/text/IdentifierInfo;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/icu/text/IdentifierInfo;->setIdentifier(Ljava/lang/String;)Landroid/icu/text/IdentifierInfo;

    :cond_d
    invoke-virtual {v6}, Landroid/icu/text/IdentifierInfo;->getScriptCount()I

    move-result v12

    new-instance v13, Landroid/icu/text/SpoofChecker$ScriptSet;

    invoke-direct {v13}, Landroid/icu/text/SpoofChecker$ScriptSet;-><init>()V

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v13}, Landroid/icu/text/SpoofChecker;->wholeScriptCheck(Ljava/lang/CharSequence;Landroid/icu/text/SpoofChecker$ScriptSet;)V

    invoke-virtual {v13}, Landroid/icu/text/SpoofChecker$ScriptSet;->countMembers()I

    move-result v2

    move-object/from16 v0, p0

    iget v15, v0, Landroid/icu/text/SpoofChecker;->fChecks:I

    and-int/lit8 v15, v15, 0x4

    if-eqz v15, :cond_e

    const/4 v15, 0x2

    if-lt v2, v15, :cond_e

    const/4 v15, 0x1

    if-ne v12, v15, :cond_e

    or-int/lit8 v11, v11, 0x4

    :cond_e
    move-object/from16 v0, p0

    iget v15, v0, Landroid/icu/text/SpoofChecker;->fChecks:I

    and-int/lit8 v15, v15, 0x2

    if-eqz v15, :cond_f

    const/4 v15, 0x1

    if-lt v2, v15, :cond_f

    const/4 v15, 0x1

    if-le v12, v15, :cond_f

    or-int/lit8 v11, v11, 0x2

    :cond_f
    if-eqz p2, :cond_10

    move-object/from16 v0, p2

    iput v11, v0, Landroid/icu/text/SpoofChecker$CheckResult;->checks:I

    :cond_10
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Landroid/icu/text/SpoofChecker;->releaseIdentifierInfo(Landroid/icu/text/IdentifierInfo;)V

    if-eqz v11, :cond_12

    const/4 v15, 0x1

    :goto_1
    return v15

    :cond_11
    invoke-virtual {v8, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    goto/16 :goto_0

    :cond_12
    const/4 v15, 0x0

    goto :goto_1
.end method

.method public getAllowedChars()Landroid/icu/text/UnicodeSet;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/SpoofChecker;->fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

    return-object v0
.end method

.method public getAllowedJavaLocales()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    iget-object v3, p0, Landroid/icu/text/SpoofChecker;->fAllowedLocales:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(I)V

    iget-object v3, p0, Landroid/icu/text/SpoofChecker;->fAllowedLocales:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/util/ULocale;

    invoke-virtual {v1}, Landroid/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getAllowedLocales()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/icu/util/ULocale;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/icu/text/SpoofChecker;->fAllowedLocales:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getChecks()I
    .locals 1

    iget v0, p0, Landroid/icu/text/SpoofChecker;->fChecks:I

    return v0
.end method

.method public getRestrictionLevel()Landroid/icu/text/SpoofChecker$RestrictionLevel;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/icu/text/SpoofChecker;->fRestrictionLevel:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    return-object v0
.end method

.method public getSkeleton(ILjava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v6, 0x0

    sparse-switch p1, :sswitch_data_0

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "SpoofChecker.getSkeleton(), bad type value."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :sswitch_0
    const/high16 v6, 0x4000000

    :goto_0
    sget-object v7, Landroid/icu/text/SpoofChecker;->nfdNormalizer:Landroid/icu/text/Normalizer2;

    invoke-virtual {v7, p2}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_0

    invoke-static {v2, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    add-int/2addr v1, v7

    invoke-direct {p0, v0, v6, v4}, Landroid/icu/text/SpoofChecker;->confusableLookup(IILjava/lang/StringBuilder;)V

    goto :goto_1

    :sswitch_1
    const/high16 v6, 0x1000000

    goto :goto_0

    :sswitch_2
    const/high16 v6, 0x8000000

    goto :goto_0

    :sswitch_3
    const/high16 v6, 0x2000000

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Landroid/icu/text/SpoofChecker;->nfdNormalizer:Landroid/icu/text/Normalizer2;

    invoke-virtual {v7, v5}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    return-object v5

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x8 -> :sswitch_2
        0x9 -> :sswitch_3
    .end sparse-switch
.end method

.method public hashCode()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-boolean v0, Landroid/icu/text/SpoofChecker;->-assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    const/16 v0, 0x4d2

    return v0
.end method
