.class public Lcom/sec/samsung/gallery/controller/StartMmsSaveCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "StartMmsSaveCmd.java"

# interfaces
.implements Lorg/puremvc/java/multicore/interfaces/ICommand;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/controller/StartMmsSaveCmd$CallMmsSave;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StartMmsSaveCmd"

.field private static mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/sec/android/gallery3d/app/GalleryApp;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/controller/StartMmsSaveCmd;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    return-object v0
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 7

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object v2, v4

    check-cast v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v0, v2, v4

    check-cast v0, Landroid/app/Activity;

    const/4 v4, 0x1

    aget-object v3, v2, v4

    check-cast v3, Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/app/GalleryApp;

    sput-object v4, Lcom/sec/samsung/gallery/controller/StartMmsSaveCmd;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    const-string/jumbo v4, "StartMmsSaveCmd"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "StartMmsSaveCmd excute. uri ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/sec/samsung/gallery/controller/StartMmsSaveCmd$CallMmsSave;

    invoke-direct {v1, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
