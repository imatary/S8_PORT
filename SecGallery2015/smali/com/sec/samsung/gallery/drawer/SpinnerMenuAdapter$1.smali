.class Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter$1;
.super Lorg/puremvc/java/multicore/patterns/mediator/Mediator;
.source "SpinnerMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter$1;->this$0:Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;

    invoke-direct {p0, p2, p3}, Lorg/puremvc/java/multicore/patterns/mediator/Mediator;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public handleNotification(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 7

    const/4 v6, 0x0

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "SpinnerMenuAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notiName : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "POST_UPDATE_DRAWER_GROUP"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter$1;->this$0:Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;

    invoke-static {v3, v6}, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->access$002(Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;Z)Z

    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter$1;->this$0:Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;

    invoke-static {v3}, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->access$100(Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v3, "UPDATE_SPINNER_EXPANSION_GROUP"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter$1;->this$0:Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;

    iget-object v3, v3, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mGroupDefaultExpansion:Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    move-object v2, v3

    check-cast v2, [Ljava/lang/Object;

    if-eqz v2, :cond_2

    aget-object v3, v2, v6

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :cond_2
    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter$1;->this$0:Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;

    iget-object v3, v3, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mGroupDefaultExpansion:Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->updateDefaultExpansionGroup(I)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter$1;->this$0:Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;

    iget-object v3, v3, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->mGroupDefaultExpansion:Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;

    invoke-virtual {v3, v6}, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->updateDefaultExpansionGroup(I)V

    goto :goto_0
.end method

.method public listNotificationInterests()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "POST_UPDATE_DRAWER_GROUP"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "UPDATE_SPINNER_EXPANSION_GROUP"

    aput-object v2, v0, v1

    return-object v0
.end method
