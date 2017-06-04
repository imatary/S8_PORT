.class public abstract Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;
.super Ljava/lang/Object;
.source "UploadCommand.java"

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/UploadContentsListener;
.implements Lcom/sec/android/gallery3d/eventshare/Command;


# static fields
.field private static final INDEX_FIELD_CLOUD_CACHED_PATH:I = 0x7

.field private static final INDEX_FIELD_CLOUD_SIZE:I = 0x5

.field private static final INDEX_FIELD_DATETAKEN:I = 0x3

.field private static final INDEX_FIELD_DATE_MODIFIED:I = 0x4

.field private static final INDEX_FIELD_ID:I = 0x0

.field private static final INDEX_FIELD_IS_CLOUD:I = 0x6

.field private static final INDEX_FIELD_MIME_TYPE:I = 0x2

.field private static final INDEX_FIELD_SIZE:I = 0x1

.field private static final NOT_RUNNING:Z = false

.field private static final RUNNING:Z = true

.field private static final TAG:Ljava/lang/String; = "UploadCommand"

.field private static final USE_SCLOUD:Z

.field public static mUploadingPercentage:I


# instance fields
.field final mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

.field final mFileCMHIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final mFileLocalPathMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mFileMediaIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsUploadRunning:Z

.field final mNotifier:Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;

.field mRemoveOriginalFileIdArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final mShareAgent:Lcom/sec/android/gallery3d/eventshare/ShareAgent;

.field final mShareNotiManager:Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;

.field final mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

.field mThumbnailItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mTotalFileCount:I

.field mUploadedFileCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSCloudOnly:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->USE_SCLOUD:Z

    const/4 v0, 0x0

    sput v0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mUploadingPercentage:I

    return-void
.end method

.method constructor <init>(Lcom/sec/android/gallery3d/eventshare/EventState;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mIsUploadRunning:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mFileLocalPathMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mFileMediaIdMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mFileCMHIdMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mThumbnailItemList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mRemoveOriginalFileIdArray:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/eventshare/EventState;->getSharedEvent()Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getShareAgent()Lcom/sec/android/gallery3d/eventshare/ShareAgent;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mShareAgent:Lcom/sec/android/gallery3d/eventshare/ShareAgent;

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mShareNotiManager:Lcom/sec/android/gallery3d/eventshare/utils/ShareNotificationManager;

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mNotifier:Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mIsUploadRunning:Z

    return v0
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->USE_SCLOUD:Z

    return v0
.end method


# virtual methods
.method public excute()V
    .locals 20

    const-string/jumbo v2, "UploadCommand"

    const/4 v3, 0x2

    const-string/jumbo v4, "excute"

    invoke-static {v2, v3, v4}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mUploadedFileCount:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getUploadedFileCount()I

    move-result v17

    if-lez v17, :cond_0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mUploadedFileCount:I

    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mIsUploadRunning:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mThumbnailItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mRemoveOriginalFileIdArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mUploadedFileCount:I

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->setUploadedFileCount(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->updateData()V

    const-string/jumbo v2, "UploadCommand"

    const-string/jumbo v3, "# File List"

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getFileList()Ljava/util/ArrayList;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getLocalPathFileList()Ljava/util/ArrayList;

    move-result-object v14

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-eqz v11, :cond_6

    const-string/jumbo v2, "UploadCommand"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x0

    :goto_0
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v12, v2, :cond_5

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/Uri;

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    if-nez v15, :cond_1

    const-string/jumbo v2, "UploadCommand"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'s path is null!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v2, "/"

    invoke-virtual {v15, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v15, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v2, "/"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v2, "."

    invoke-virtual {v10, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v10, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v10, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v2, "/"

    invoke-virtual {v10, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v10, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mFileLocalPathMap:Ljava/util/HashMap;

    invoke-virtual {v2, v10, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "/"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v13

    sget-object v2, Lcom/sec/android/gallery3d/data/UnionImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/sec/android/gallery3d/data/UnionVideo;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mFileCMHIdMap:Ljava/util/HashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mFileMediaIdMap:Ljava/util/HashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mFileMediaIdMap:Ljava/util/HashMap;

    const-string/jumbo v3, "/"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mTotalFileCount:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mTotalFileCount:I

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->setUploadTotalCount(I)V

    const-string/jumbo v2, "UploadCommand"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "upload : ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getUgci()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mShareAgent:Lcom/sec/android/gallery3d/eventshare/ShareAgent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getUgci()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getMyDuid()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getFileList()Ljava/util/ArrayList;

    move-result-object v5

    move-object/from16 v7, p0

    invoke-interface/range {v2 .. v7}, Lcom/sec/android/gallery3d/eventshare/ShareAgent;->upload(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->setUpdatedTime(J)V

    :goto_2
    return-void

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/EventState;->onCancel()V

    goto :goto_2
.end method

.method public onError(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)V
    .locals 4

    const-string/jumbo v0, "UploadCommand"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onError : ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->getShareId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->getRequestToken()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->setUpdatedTime(J)V

    return-void
.end method

.method public onFileUploaded(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadContentsResponse;)V
    .locals 7

    const/4 v6, 0x0

    const-string/jumbo v2, "UploadCommand"

    const-string/jumbo v3, "onFileUploaded"

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->setUpdatedTime(J)V

    sput v6, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mUploadingPercentage:I

    iget v2, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mTotalFileCount:I

    iget v3, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mUploadedFileCount:I

    if-le v2, v3, :cond_2

    iget v2, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mUploadedFileCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mUploadedFileCount:I

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    iget v3, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mUploadedFileCount:I

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->setUploadedFileCount(I)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand$3;

    invoke-direct {v3, p0}, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand$3;-><init>(Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    iget v2, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mTotalFileCount:I

    iget v3, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mUploadedFileCount:I

    if-ne v2, v3, :cond_3

    iput-boolean v6, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mIsUploadRunning:Z

    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadContentsResponse;->getPath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand$4;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand$4;-><init>(Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "UploadMakeThumbnail"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public onPreparingShare(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;)V
    .locals 4

    const-string/jumbo v0, "UploadCommand"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPreparingShare : ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->getRequestToken()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->setUpdatedTime(J)V

    return-void
.end method

.method public onProgress(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ProgressResponse;)V
    .locals 4

    const-string/jumbo v0, "UploadCommand"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onProgress, event ID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->setUpdatedTime(J)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand$2;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand$2;-><init>(Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ProgressResponse;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onShareStarted(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;)V
    .locals 8

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->getRequestToken()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->getShareId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string/jumbo v4, "UploadCommand"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onShareStarted : ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->setUpdatedTime(J)V

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/eventshare/EventState;->isCanceled()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "UploadCommand"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "cancel in onShareStarted : ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v4, v2, v3}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->setShareID(J)V

    new-instance v4, Lcom/sec/android/gallery3d/eventshare/command/CancelUploadCommand;

    iget-object v5, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    invoke-direct {v4, v5}, Lcom/sec/android/gallery3d/eventshare/command/CancelUploadCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;)V

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/eventshare/command/CancelUploadCommand;->excute()V

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->setUpdatedTime(J)V

    :goto_0
    return-void

    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mIsUploadRunning:Z

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand$1;

    invoke-direct {v5, p0, v2, v3}, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand$1;-><init>(Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;J)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadCompletedResponse;)V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v0, "UploadCommand"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSuccess : ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadCompletedResponse;->getRequestToken()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->setShareID(J)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0, v4}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->setUploadedFileCount(I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->setUpdatedTime(J)V

    sput v4, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mUploadingPercentage:I

    iput-boolean v4, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;->mIsUploadRunning:Z

    goto :goto_0
.end method

.method protected abstract updateData()V
.end method
