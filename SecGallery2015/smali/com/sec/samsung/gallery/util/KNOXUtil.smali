.class public Lcom/sec/samsung/gallery/util/KNOXUtil;
.super Ljava/lang/Object;
.source "KNOXUtil.java"


# static fields
.field private static final MOVE_TO_CONTAINER_ID:Ljava/lang/String; = "com.sec.knox.moveto.containerId"

.field private static final MOVE_TO_CONTAINER_TYPE:Ljava/lang/String; = "com.sec.knox.moveto.containerType"

.field private static final MOVE_TO_CONTAINER_TYPE_KNOX:I = 0x3e9

.field private static final MOVE_TO_CONTAINER_TYPE_SECURE_FOLDER:I = 0x3ea

.field private static final MOVE_TO_NAME:Ljava/lang/String; = "com.sec.knox.moveto.name"

.field private static final MOVE_TO_PERSONAL_TYPE_KNOX:I = 0x3ec

.field private static final MOVE_TO_PERSONAL_TYPE_SECURE_FOLDER:I = 0x3eb

.field private static final TAG:Ljava/lang/String; = "KNOXUtil"

.field private static mInstance:Lcom/sec/samsung/gallery/util/KNOXUtil;


# instance fields
.field private mIsMoveOutKnox1On:Z

.field private mIsMoveOutKnox2On:Z

.field private mIsMoveToKnox1On:Z

.field private mIsMoveToKnox2On:Z

.field private mIsMoveToSecureFolderOn:Z

.field private mIsSecureFolderEnabled:Z

.field private mMoveOutKnox1ContainerId:I

.field private mMoveOutKnox2ContainerId:I

.field private mMoveOutKnox2Name:Ljava/lang/String;

.field private mMoveToKnox1ContainerId:I

.field private mMoveToKnox1Name:Ljava/lang/String;

.field private mMoveToKnox2ContainerId:I

.field private mMoveToKnox2Name:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, -0x64

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/util/KNOXUtil;->mIsSecureFolderEnabled:Z

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/util/KNOXUtil;->mIsMoveToKnox1On:Z

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/util/KNOXUtil;->mIsMoveToKnox2On:Z

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/util/KNOXUtil;->mIsMoveOutKnox1On:Z

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/util/KNOXUtil;->mIsMoveOutKnox2On:Z

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/util/KNOXUtil;->mIsMoveToSecureFolderOn:Z

    iput v1, p0, Lcom/sec/samsung/gallery/util/KNOXUtil;->mMoveToKnox1ContainerId:I

    iput v1, p0, Lcom/sec/samsung/gallery/util/KNOXUtil;->mMoveToKnox2ContainerId:I

    iput v1, p0, Lcom/sec/samsung/gallery/util/KNOXUtil;->mMoveOutKnox1ContainerId:I

    iput v1, p0, Lcom/sec/samsung/gallery/util/KNOXUtil;->mMoveOutKnox2ContainerId:I

    iput-object v2, p0, Lcom/sec/samsung/gallery/util/KNOXUtil;->mMoveToKnox1Name:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/samsung/gallery/util/KNOXUtil;->mMoveToKnox2Name:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/samsung/gallery/util/KNOXUtil;->mMoveOutKnox2Name:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/util/KNOXUtil;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/samsung/gallery/util/KNOXUtil;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/util/KNOXUtil;->mInstance:Lcom/sec/samsung/gallery/util/KNOXUtil;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/util/KNOXUtil;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/util/KNOXUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/samsung/gallery/util/KNOXUtil;->mInstance:Lcom/sec/samsung/gallery/util/KNOXUtil;

    :cond_0
    sget-object v0, Lcom/sec/samsung/gallery/util/KNOXUtil;->mInstance:Lcom/sec/samsung/gallery/util/KNOXUtil;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 13

    const/4 v12, 0x0

    const/4 v11, 0x1

    new-instance v5, Lcom/sec/samsung/gallery/lib/factory/PersonaManagerFactory;

    invoke-direct {v5}, Lcom/sec/samsung/gallery/lib/factory/PersonaManagerFactory;-><init>()V

    invoke-interface {v5, p1}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/lib/libinterface/PersonaManagerInterface;

    invoke-interface {v2, p1}, Lcom/sec/samsung/gallery/lib/libinterface/PersonaManagerInterface;->getMoveToKnoxMenuList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    iput-boolean v11, p0, Lcom/sec/samsung/gallery/util/KNOXUtil;->mIsSecureFolderEnabled:Z

    move-object v4, v6

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    if-eqz v3, :cond_0

    const-string/jumbo v8, "com.sec.knox.moveto.containerId"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v8, "com.sec.knox.moveto.containerType"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v8, "KNOXUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Move to knox containerId["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "] containerType["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v1, :pswitch_data_0

    iget-boolean v8, p0, Lcom/sec/samsung/gallery/util/KNOXUtil;->mIsMoveToKnox1On:Z

    if-nez v8, :cond_1

    iput-boolean v11, p0, Lcom/sec/samsung/gallery/util/KNOXUtil;->mIsMoveToKnox1On:Z

    iput v0, p0, Lcom/sec/samsung/gallery/util/KNOXUtil;->mMoveToKnox1ContainerId:I

    const-string/jumbo v8, "com.sec.knox.moveto.name"

    invoke-virtual {v3, v8, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/samsung/gallery/util/KNOXUtil;->mMoveToKnox1Name:Ljava/lang/String;

    const-string/jumbo v8, "KNOXUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Move to knox mMoveToKnox1Name["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/samsung/gallery/util/KNOXUtil;->mMoveToKnox1Name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    iput-boolean v11, p0, Lcom/sec/samsung/gallery/util/KNOXUtil;->mIsMoveToKnox2On:Z

    iput-boolean v11, p0, Lcom/sec/samsung/gallery/util/KNOXUtil;->mIsMoveToSecureFolderOn:Z

    iput v0, p0, Lcom/sec/samsung/gallery/util/KNOXUtil;->mMoveToKnox2ContainerId:I

    const-string/jumbo v8, "com.sec.knox.moveto.name"

    invoke-virtual {v3, v8, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/samsung/gallery/util/KNOXUtil;->mMoveToKnox2Name:Ljava/lang/String;

    const-string/jumbo v8, "KNOXUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Move to knox mMoveToKnox2Name["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/samsung/gallery/util/KNOXUtil;->mMoveToKnox2Name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_1
    iput-boolean v11, p0, Lcom/sec/samsung/gallery/util/KNOXUtil;->mIsMoveOutKnox2On:Z

    iput v0, p0, Lcom/sec/samsung/gallery/util/KNOXUtil;->mMoveOutKnox2ContainerId:I

    const-string/jumbo v8, "com.sec.knox.moveto.name"

    invoke-virtual {v3, v8, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/samsung/gallery/util/KNOXUtil;->mMoveOutKnox2Name:Ljava/lang/String;

    const-string/jumbo v8, "KNOXUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Move to knox mMoveOutKnox2Name["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/samsung/gallery/util/KNOXUtil;->mMoveOutKnox2Name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_2
    iput-boolean v11, p0, Lcom/sec/samsung/gallery/util/KNOXUtil;->mIsMoveOutKnox1On:Z

    iput v0, p0, Lcom/sec/samsung/gallery/util/KNOXUtil;->mMoveOutKnox1ContainerId:I

    goto/16 :goto_0

    :cond_1
    iput-boolean v11, p0, Lcom/sec/samsung/gallery/util/KNOXUtil;->mIsMoveToKnox2On:Z

    iput v0, p0, Lcom/sec/samsung/gallery/util/KNOXUtil;->mMoveToKnox2ContainerId:I

    const-string/jumbo v8, "com.sec.knox.moveto.name"

    invoke-virtual {v3, v8, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/samsung/gallery/util/KNOXUtil;->mMoveToKnox2Name:Ljava/lang/String;

    const-string/jumbo v8, "KNOXUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Move to knox mMoveToKnox2Name["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/samsung/gallery/util/KNOXUtil;->mMoveToKnox2Name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2
    const-string/jumbo v7, "KNOXUtil"

    const-string/jumbo v8, "Move to knox menu list is not exist"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x3ea
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getMoveOutKnox1ContainerId()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/util/KNOXUtil;->mMoveOutKnox1ContainerId:I

    return v0
.end method

.method public getMoveOutKnox2ContainerId()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/util/KNOXUtil;->mMoveOutKnox2ContainerId:I

    return v0
.end method

.method public getMoveOutKnox2Name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/KNOXUtil;->mMoveOutKnox2Name:Ljava/lang/String;

    return-object v0
.end method

.method public getMoveToKnox1ContainerId()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/util/KNOXUtil;->mMoveToKnox1ContainerId:I

    return v0
.end method

.method public getMoveToKnox1Name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/KNOXUtil;->mMoveToKnox1Name:Ljava/lang/String;

    return-object v0
.end method

.method public getMoveToKnox2ContainerId()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/util/KNOXUtil;->mMoveToKnox2ContainerId:I

    return v0
.end method

.method public getMoveToKnox2Name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/KNOXUtil;->mMoveToKnox2Name:Ljava/lang/String;

    return-object v0
.end method

.method public isMoveOutKnox1On()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/util/KNOXUtil;->mIsMoveOutKnox1On:Z

    return v0
.end method

.method public isMoveOutKnox2On()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/util/KNOXUtil;->mIsMoveOutKnox2On:Z

    return v0
.end method

.method public isMoveToKnox1On()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/util/KNOXUtil;->mIsMoveToKnox1On:Z

    return v0
.end method

.method public isMoveToKnox2On()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/util/KNOXUtil;->mIsMoveToKnox2On:Z

    return v0
.end method

.method public isMoveToSecureFolderOn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/util/KNOXUtil;->mIsMoveToSecureFolderOn:Z

    return v0
.end method

.method public isSecureFolderEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/util/KNOXUtil;->mIsSecureFolderEnabled:Z

    return v0
.end method

.method public releaseInstance()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/samsung/gallery/util/KNOXUtil;->mInstance:Lcom/sec/samsung/gallery/util/KNOXUtil;

    return-void
.end method
