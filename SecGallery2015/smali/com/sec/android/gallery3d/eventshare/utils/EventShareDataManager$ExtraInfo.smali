.class public Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager$ExtraInfo;
.super Ljava/lang/Object;
.source "EventShareDataManager.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExtraInfo"
.end annotation


# static fields
.field public static final serialVersionUID:J = 0x3e8L


# instance fields
.field private mContactUriList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFileUri:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalPathFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager$ExtraInfo;->mFileUri:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager$ExtraInfo;->mContactUriList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager$ExtraInfo;->mLocalPathFileList:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager$ExtraInfo;->mFileUri:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager$ExtraInfo;->mContactUriList:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager$ExtraInfo;->mLocalPathFileList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager$ExtraInfo;)Ljava/util/ArrayList;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager$ExtraInfo;->getContactList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager$ExtraInfo;)Ljava/util/ArrayList;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager$ExtraInfo;->getFileList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager$ExtraInfo;)Ljava/util/ArrayList;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager$ExtraInfo;->getLocalPathList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private getContactList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager$ExtraInfo;->mContactUriList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private getFileList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager$ExtraInfo;->mFileUri:Ljava/util/ArrayList;

    return-object v0
.end method

.method private getLocalPathList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager$ExtraInfo;->mLocalPathFileList:Ljava/util/ArrayList;

    return-object v0
.end method
