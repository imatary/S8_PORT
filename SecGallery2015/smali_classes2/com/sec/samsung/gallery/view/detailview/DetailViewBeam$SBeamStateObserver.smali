.class Lcom/sec/samsung/gallery/view/detailview/DetailViewBeam$SBeamStateObserver;
.super Landroid/database/ContentObserver;
.source "DetailViewBeam.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/detailview/DetailViewBeam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SBeamStateObserver"
.end annotation


# instance fields
.field private final mResolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewBeam;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/view/detailview/DetailViewBeam;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewBeam$SBeamStateObserver;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewBeam;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewBeam$SBeamStateObserver;->mResolver:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    const-string/jumbo v0, "DetailViewBeam"

    const-string/jumbo v1, "onChange()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewBeam$SBeamStateObserver;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewBeam;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewBeam;->setBeamListener()V

    return-void
.end method

.method public register()V
    .locals 3

    const-string/jumbo v0, "DetailViewBeam"

    const-string/jumbo v1, "register setting observer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewBeam$SBeamStateObserver;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "sbeam_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public unregister()V
    .locals 2

    const-string/jumbo v0, "DetailViewBeam"

    const-string/jumbo v1, "unregister setting observer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewBeam$SBeamStateObserver;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
