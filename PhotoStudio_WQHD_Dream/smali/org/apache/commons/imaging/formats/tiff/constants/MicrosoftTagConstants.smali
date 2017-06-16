.class public final Lorg/apache/commons/imaging/formats/tiff/constants/MicrosoftTagConstants;
.super Ljava/lang/Object;
.source "MicrosoftTagConstants.java"


# static fields
.field public static final ALL_MICROSOFT_TAGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXIF_TAG_RATING:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

.field public static final EXIF_TAG_RATING_PERCENT:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

.field public static final EXIF_TAG_XPAUTHOR:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoXpString;

.field public static final EXIF_TAG_XPCOMMENT:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoXpString;

.field public static final EXIF_TAG_XPKEYWORDS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoXpString;

.field public static final EXIF_TAG_XPSUBJECT:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoXpString;

.field public static final EXIF_TAG_XPTITLE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoXpString;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, -0x1

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    const-string v1, "Rating"

    const/16 v2, 0x4746

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_IFD0:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    invoke-direct {v0, v1, v2, v5, v3}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/MicrosoftTagConstants;->EXIF_TAG_RATING:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    const-string v1, "RatingPercent"

    const/16 v2, 0x4749

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_IFD0:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    invoke-direct {v0, v1, v2, v5, v3}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/MicrosoftTagConstants;->EXIF_TAG_RATING_PERCENT:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoXpString;

    const-string v1, "XPTitle"

    const v2, 0x9c9b

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_IFD0:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    invoke-direct {v0, v1, v2, v4, v3}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoXpString;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/MicrosoftTagConstants;->EXIF_TAG_XPTITLE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoXpString;

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoXpString;

    const-string v1, "XPComment"

    const v2, 0x9c9c

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_IFD0:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    invoke-direct {v0, v1, v2, v4, v3}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoXpString;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/MicrosoftTagConstants;->EXIF_TAG_XPCOMMENT:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoXpString;

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoXpString;

    const-string v1, "XPAuthor"

    const v2, 0x9c9d

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_IFD0:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    invoke-direct {v0, v1, v2, v4, v3}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoXpString;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/MicrosoftTagConstants;->EXIF_TAG_XPAUTHOR:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoXpString;

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoXpString;

    const-string v1, "XPKeywords"

    const v2, 0x9c9e

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_IFD0:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    invoke-direct {v0, v1, v2, v4, v3}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoXpString;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/MicrosoftTagConstants;->EXIF_TAG_XPKEYWORDS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoXpString;

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoXpString;

    const-string v1, "XPSubject"

    const v2, 0x9c9f

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_IFD0:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    invoke-direct {v0, v1, v2, v4, v3}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoXpString;-><init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/MicrosoftTagConstants;->EXIF_TAG_XPSUBJECT:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoXpString;

    const/4 v0, 0x7

    new-array v0, v0, [Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;

    const/4 v1, 0x0

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/MicrosoftTagConstants;->EXIF_TAG_RATING:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    aput-object v2, v0, v1

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/MicrosoftTagConstants;->EXIF_TAG_RATING_PERCENT:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    aput-object v1, v0, v5

    const/4 v1, 0x2

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/MicrosoftTagConstants;->EXIF_TAG_XPTITLE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoXpString;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/MicrosoftTagConstants;->EXIF_TAG_XPCOMMENT:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoXpString;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/MicrosoftTagConstants;->EXIF_TAG_XPAUTHOR:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoXpString;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/MicrosoftTagConstants;->EXIF_TAG_XPKEYWORDS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoXpString;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/MicrosoftTagConstants;->EXIF_TAG_XPSUBJECT:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoXpString;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/MicrosoftTagConstants;->ALL_MICROSOFT_TAGS:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
