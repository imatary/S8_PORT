.class Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConvertInfo;
.super Ljava/lang/Object;
.source "ConvertMultiFormatToMP4Cmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConvertInfo"
.end annotation


# static fields
.field private static final TYPE_3DTOUR:I = 0x3

.field private static final TYPE_GOLFSHOT:I = 0x2

.field private static final TYPE_MOTION_PANORAMA:I = 0x5

.field private static final TYPE_MOTION_PHOTO:I = 0x6

.field private static final TYPE_SELF_MOTION_PANORAMA:I = 0x7

.field private static final TYPE_SOUNDSHOT:I = 0x1

.field private static final TYPE_VIRTUALSHOT:I = 0x4


# instance fields
.field private final mImageType:I

.field private final mInPath:Ljava/lang/String;

.field private final mOutPath:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConvertInfo;->mInPath:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConvertInfo;->mOutPath:Ljava/lang/String;

    iput p3, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConvertInfo;->mImageType:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConvertInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConvertInfo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConvertInfo;->mInPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConvertInfo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConvertInfo;->mOutPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConvertInfo;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd$ConvertInfo;->mImageType:I

    return v0
.end method
