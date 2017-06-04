.class public Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "VisualSearchFaceTaggingCmd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd$FaceTaggingAsyncTask;
    }
.end annotation


# static fields
.field private static final PERSON_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "VisualSearchFaceTagging"


# instance fields
.field private mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd;->PERSON_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd;->PERSON_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 14

    const/4 v13, 0x0

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    aget-object v2, v0, v13

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iput-object v2, p0, Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v2, 0x1

    aget-object v3, v0, v2

    check-cast v3, Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v2, v0, v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v2, 0x3

    aget-object v5, v0, v2

    check-cast v5, Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v2, v0, v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v2, 0x5

    aget-object v2, v0, v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const/4 v2, 0x6

    aget-object v2, v0, v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    const/4 v2, 0x7

    aget-object v2, v0, v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    const/16 v2, 0x8

    aget-object v12, v0, v2

    check-cast v12, Lcom/sec/android/gallery3d/data/MediaItem;

    new-instance v1, Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd$FaceTaggingAsyncTask;

    move-object v2, p0

    invoke-direct/range {v1 .. v12}, Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd$FaceTaggingAsyncTask;-><init>(Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd;Ljava/lang/String;ZLjava/lang/String;JJZZLcom/sec/android/gallery3d/data/MediaItem;)V

    new-array v2, v13, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/controller/VisualSearchFaceTaggingCmd$FaceTaggingAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
