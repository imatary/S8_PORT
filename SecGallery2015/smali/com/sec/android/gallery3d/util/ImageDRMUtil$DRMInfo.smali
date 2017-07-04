.class public Lcom/sec/android/gallery3d/util/ImageDRMUtil$DRMInfo;
.super Ljava/lang/Object;
.source "ImageDRMUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/util/ImageDRMUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DRMInfo"
.end annotation


# instance fields
.field public final mDrmType:I

.field private final mLicenseCategory:I

.field public final mOriginalMime:Ljava/lang/String;

.field private final mRightType:I

.field final synthetic this$0:Lcom/sec/android/gallery3d/util/ImageDRMUtil;


# direct methods
.method private constructor <init>(Lcom/sec/android/gallery3d/util/ImageDRMUtil;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/gallery3d/util/ImageDRMUtil$DRMInfo;->this$0:Lcom/sec/android/gallery3d/util/ImageDRMUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, p2}, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->getDrmType(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/util/ImageDRMUtil$DRMInfo;->mDrmType:I

    invoke-virtual {p1, p2}, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/util/ImageDRMUtil$DRMInfo;->mOriginalMime:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->access$400(Lcom/sec/android/gallery3d/util/ImageDRMUtil;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/util/ImageDRMUtil$DRMInfo;->mLicenseCategory:I

    invoke-static {p1, p2}, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->access$500(Lcom/sec/android/gallery3d/util/ImageDRMUtil;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/util/ImageDRMUtil$DRMInfo;->mRightType:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/util/ImageDRMUtil;Ljava/lang/String;Lcom/sec/android/gallery3d/util/ImageDRMUtil$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/util/ImageDRMUtil$DRMInfo;-><init>(Lcom/sec/android/gallery3d/util/ImageDRMUtil;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/util/ImageDRMUtil$DRMInfo;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/util/ImageDRMUtil$DRMInfo;->mRightType:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/util/ImageDRMUtil$DRMInfo;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/util/ImageDRMUtil$DRMInfo;->mLicenseCategory:I

    return v0
.end method
