.class public Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareItemPath;
.super Ljava/lang/Object;
.source "CMHInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/access/cmh/CMHInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShareItemPath"
.end annotation


# instance fields
.field public mCloudCachedPath:Ljava/lang/String;

.field public mDateTaken:J

.field public mFileId:I

.field public mFileSize:I

.field public mIsCloudItem:Z

.field public mMimeType:Ljava/lang/String;

.field private mOriginalFileLocalPath:Ljava/lang/String;

.field public mOriginalFileName:Ljava/lang/String;

.field public mTimeModified:J


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;JJ)V
    .locals 7

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareItemPath;->mOriginalFileLocalPath:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareItemPath;->mIsCloudItem:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareItemPath;->mFileId:I

    iput v2, p0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareItemPath;->mFileSize:I

    iput-wide v4, p0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareItemPath;->mDateTaken:J

    iput-wide v4, p0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareItemPath;->mTimeModified:J

    iput-object v1, p0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareItemPath;->mCloudCachedPath:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareItemPath;->mMimeType:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareItemPath;->mOriginalFileName:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct/range {p0 .. p8}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareItemPath;->initDefaultValue(Ljava/lang/String;IILjava/lang/String;JJ)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;JJLjava/lang/String;)V
    .locals 9

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareItemPath;->mOriginalFileLocalPath:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareItemPath;->mIsCloudItem:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareItemPath;->mFileId:I

    iput v4, p0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareItemPath;->mFileSize:I

    iput-wide v6, p0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareItemPath;->mDateTaken:J

    iput-wide v6, p0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareItemPath;->mTimeModified:J

    iput-object v3, p0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareItemPath;->mCloudCachedPath:Ljava/lang/String;

    iput-object v3, p0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareItemPath;->mMimeType:Ljava/lang/String;

    iput-object v3, p0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareItemPath;->mOriginalFileName:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct/range {p0 .. p8}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareItemPath;->initDefaultValue(Ljava/lang/String;IILjava/lang/String;JJ)V

    if-eqz p9, :cond_0

    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareItemPath;->mCloudCachedPath:Ljava/lang/String;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareItemPath;->mIsCloudItem:Z

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareItemPath;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareItemPath;->mOriginalFileLocalPath:Ljava/lang/String;

    return-object v0
.end method

.method private initDefaultValue(Ljava/lang/String;IILjava/lang/String;JJ)V
    .locals 3

    iput-object p1, p0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareItemPath;->mOriginalFileLocalPath:Ljava/lang/String;

    const-string/jumbo v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const-string/jumbo v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareItemPath;->mOriginalFileName:Ljava/lang/String;

    iput p2, p0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareItemPath;->mFileId:I

    iput-object p4, p0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareItemPath;->mMimeType:Ljava/lang/String;

    iput p3, p0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareItemPath;->mFileSize:I

    iput-wide p5, p0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareItemPath;->mDateTaken:J

    iput-wide p7, p0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareItemPath;->mTimeModified:J

    return-void
.end method
