.class public Lcom/sec/samsung/gallery/controller/VisualSearchDeleteNameCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "VisualSearchDeleteNameCmd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/controller/VisualSearchDeleteNameCmd$DeleteNameTask;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 6

    const/4 v5, 0x0

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object v1, v4

    check-cast v1, [Ljava/lang/Object;

    aget-object v0, v1, v5

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v4, 0x1

    aget-object v2, v1, v4

    check-cast v2, Ljava/lang/String;

    new-instance v3, Lcom/sec/samsung/gallery/controller/VisualSearchDeleteNameCmd$DeleteNameTask;

    invoke-direct {v3, v0, v2}, Lcom/sec/samsung/gallery/controller/VisualSearchDeleteNameCmd$DeleteNameTask;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Ljava/lang/String;)V

    new-array v4, v5, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/controller/VisualSearchDeleteNameCmd$DeleteNameTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
