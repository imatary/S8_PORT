.class public Lcom/sec/samsung/gallery/controller/FlashAnnotateCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "FlashAnnotateCmd.java"


# static fields
.field private static final FLASH_ANNOTATE_ACTIVITY:Ljava/lang/String; = "com.sec.spen.flashannotate.FlashAnnotateActivity"

.field private static final FLASH_ANNOTATE_PACKET:Ljava/lang/String; = "com.sec.spen.flashannotate"

.field private static final INTENT_FA_IMAGE_HEIGHT:Ljava/lang/String; = "imageHeight"

.field private static final INTENT_FA_IMAGE_WIDTH:Ljava/lang/String; = "imageWidth"

.field private static final INTENT_FA_REMOVE_CAPTURED_IMAGE:Ljava/lang/String; = "removeCapturedImage"

.field private static final INTENT_FA_SAVE_PATH:Ljava/lang/String; = "savepath"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/samsung/gallery/controller/FlashAnnotateCmd;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/controller/FlashAnnotateCmd;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    return-void
.end method

.method private isFArunning()Z
    .locals 8

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/FlashAnnotateCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/16 v6, 0x64

    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    const/4 v2, 0x0

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    :cond_0
    if-lez v2, :cond_1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v6, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, "com.sec.spen.flashannotate.FlashAnnotateActivity"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x1

    :cond_1
    return v5
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 10

    const/4 v9, 0x0

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    move-object v6, v7

    check-cast v6, [Ljava/lang/Object;

    aget-object v7, v6, v9

    check-cast v7, Landroid/content/Context;

    iput-object v7, p0, Lcom/sec/samsung/gallery/controller/FlashAnnotateCmd;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    aget-object v5, v6, v7

    check-cast v5, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/FlashAnnotateCmd;->isFArunning()Z

    move-result v7

    if-eqz v7, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->getWidth()I

    move-result v4

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->getHeight()I

    move-result v2

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/high16 v7, 0x14010000

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v7, "com.sec.spen.flashannotate"

    const-string/jumbo v8, "com.sec.spen.flashannotate.FlashAnnotateActivity"

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "savepath"

    invoke-virtual {v1, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "imageWidth"

    invoke-virtual {v1, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v7, "imageHeight"

    invoke-virtual {v1, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v7, "removeCapturedImage"

    invoke-virtual {v1, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_0
    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/FlashAnnotateCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v7, Lcom/sec/samsung/gallery/controller/FlashAnnotateCmd;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "Activity Not Found"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v7, Lcom/sec/samsung/gallery/controller/FlashAnnotateCmd;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
