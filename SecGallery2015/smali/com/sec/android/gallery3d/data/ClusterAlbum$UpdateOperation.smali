.class public Lcom/sec/android/gallery3d/data/ClusterAlbum$UpdateOperation;
.super Ljava/lang/Object;
.source "ClusterAlbum.java"

# interfaces
.implements Lcom/sec/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/data/ClusterAlbum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UpdateOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sec/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final ASSIGN_NAME:I = 0x2

.field private static final CONFIRM:I = 0x0

.field public static final REMOVE:I = 0x1

.field public static final UPDATE:I = 0x3


# instance fields
.field private final mAlbumName:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mJoinedName:Ljava/lang/String;

.field private final mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

.field private mOperationType:I

.field private mPersonId:I

.field private final mUpdatePaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/gallery3d/data/ClusterAlbum;


# direct methods
.method private constructor <init>(Lcom/sec/android/gallery3d/data/ClusterAlbum;Ljava/lang/String;Ljava/util/ArrayList;Landroid/content/Context;ILjava/lang/String;Lcom/sec/android/gallery3d/data/MediaSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            ">;",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Lcom/sec/android/gallery3d/data/MediaSet;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum$UpdateOperation;->this$0:Lcom/sec/android/gallery3d/data/ClusterAlbum;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum$UpdateOperation;->mOperationType:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum$UpdateOperation;->mPersonId:I

    iput-object p2, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum$UpdateOperation;->mAlbumName:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum$UpdateOperation;->mUpdatePaths:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum$UpdateOperation;->mContext:Landroid/content/Context;

    iput p5, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum$UpdateOperation;->mOperationType:I

    iput-object p6, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum$UpdateOperation;->mJoinedName:Ljava/lang/String;

    iput-object p7, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum$UpdateOperation;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/data/ClusterAlbum;Ljava/lang/String;Ljava/util/ArrayList;Landroid/content/Context;ILjava/lang/String;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/ClusterAlbum$1;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/sec/android/gallery3d/data/ClusterAlbum$UpdateOperation;-><init>(Lcom/sec/android/gallery3d/data/ClusterAlbum;Ljava/lang/String;Ljava/util/ArrayList;Landroid/content/Context;ILjava/lang/String;Lcom/sec/android/gallery3d/data/MediaSet;)V

    return-void
.end method

.method private assignName()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum$UpdateOperation;->this$0:Lcom/sec/android/gallery3d/data/ClusterAlbum;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum$UpdateOperation;->mUpdatePaths:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum$UpdateOperation;->mJoinedName:Ljava/lang/String;

    iget v3, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum$UpdateOperation;->mPersonId:I

    # invokes: Lcom/sec/android/gallery3d/data/ClusterAlbum;->updateSelectedFaces(Ljava/util/ArrayList;Ljava/lang/String;I)V
    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->access$200(Lcom/sec/android/gallery3d/data/ClusterAlbum;Ljava/util/ArrayList;Ljava/lang/String;I)V

    return-void
.end method

.method private confirm()V
    .locals 8

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum$UpdateOperation;->mUpdatePaths:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v7, "/"

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x3

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v7, 0x9

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v7, 0xa

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-eq v4, v3, :cond_0

    iget-object v7, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum$UpdateOperation;->mContext:Landroid/content/Context;

    invoke-static {v7, v0, v4}, Lcom/sec/samsung/gallery/access/face/FaceList;->setPerson(Landroid/content/Context;II)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private remove()V
    .locals 20

    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    const/4 v9, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/ClusterAlbum$UpdateOperation;->mUpdatePaths:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v9, v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/ClusterAlbum$UpdateOperation;->mUpdatePaths:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    const/16 v2, 0x9

    aget-object v2, v18, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    const/4 v2, 0x1

    if-le v15, v2, :cond_0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/ClusterAlbum$UpdateOperation;->mUpdatePaths:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sec/android/gallery3d/data/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/gallery3d/data/ClusterAlbum$UpdateOperation;->this$0:Lcom/sec/android/gallery3d/data/ClusterAlbum;

    # getter for: Lcom/sec/android/gallery3d/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->access$100(Lcom/sec/android/gallery3d/data/ClusterAlbum;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v5, "/"

    invoke-virtual {v14, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    const/4 v5, 0x3

    aget-object v5, v19, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/gallery3d/data/ClusterAlbum$UpdateOperation;->mContext:Landroid/content/Context;

    invoke-static {v5, v10}, Lcom/sec/samsung/gallery/access/face/FaceList;->setFaceUnknown(Landroid/content/Context;I)V

    goto :goto_1

    :cond_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/ClusterAlbum$UpdateOperation;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v5, "_id"

    aput-object v5, v3, v2

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    :try_start_0
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v17

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "recommended_id = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v2, Lcom/sec/samsung/gallery/access/face/FaceData;->FACES_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "ClusterAlbum"

    invoke-static/range {v1 .. v7}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_3

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_2

    :catchall_0
    move-exception v2

    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v2

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/ClusterAlbum$UpdateOperation;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/sec/samsung/gallery/access/face/PersonList;->remove(Landroid/content/Context;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/data/ClusterAlbum$UpdateOperation;->run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum$UpdateOperation;->mOperationType:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum$UpdateOperation;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    instance-of v0, v0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum$UpdateOperation;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->updateMediaSet()V

    :cond_0
    return-object v3

    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/ClusterAlbum$UpdateOperation;->confirm()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum$UpdateOperation;->this$0:Lcom/sec/android/gallery3d/data/ClusterAlbum;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->updateMediaSet()V

    const-string/jumbo v0, "reload"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CONFIRM s_updateAlbum = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/util/ArcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/ClusterAlbum$UpdateOperation;->remove()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum$UpdateOperation;->this$0:Lcom/sec/android/gallery3d/data/ClusterAlbum;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->updateMediaSet()V

    const-string/jumbo v0, "reload"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "REMOVE s_updateAlbum = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/util/ArcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum$UpdateOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum$UpdateOperation;->mAlbumName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/access/face/PersonList;->addPerson(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum$UpdateOperation;->mPersonId:I

    const-string/jumbo v0, "reload"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ASSIGN_NAME s_updateAlbum = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum$UpdateOperation;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum$UpdateOperation;->mPersonId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/util/ArcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/ClusterAlbum$UpdateOperation;->assignName()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
