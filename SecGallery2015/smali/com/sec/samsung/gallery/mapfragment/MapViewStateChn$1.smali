.class Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$1;
.super Lorg/puremvc/java/multicore/patterns/mediator/Mediator;
.source "MapViewStateChn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$1;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-direct {p0, p2, p3}, Lorg/puremvc/java/multicore/patterns/mediator/Mediator;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public handleNotification(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 3

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "SECRET_MODE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    instance-of v2, v2, Landroid/content/res/Configuration;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$1;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    # invokes: Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->onConfigChanged()V
    invoke-static {v2}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$000(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)V

    :cond_0
    return-void
.end method

.method public listNotificationInterests()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "SECRET_MODE_CHANGED"

    aput-object v2, v0, v1

    return-object v0
.end method
