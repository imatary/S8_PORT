.class Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListObserver;
.super Landroid/database/ContentObserver;
.source "EventChoiceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventListObserver"
.end annotation


# instance fields
.field private final mResolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListObserver;->this$0:Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListObserver;->mResolver:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListObserver;->this$0:Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;

    # getter for: Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->access$400(Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->isSecretDirMounted(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListObserver;->this$0:Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;

    # invokes: Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->startLoadChannelAlbumSet()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->access$500(Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;)V

    return-void
.end method

.method public register()V
    .locals 3

    const-string/jumbo v0, "EventChoiceActivity"

    const-string/jumbo v1, "register setting observer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListObserver;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListObserver;->this$0:Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;

    # getter for: Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->mWatchUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->access$300(Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public unregister()V
    .locals 2

    const-string/jumbo v0, "EventChoiceActivity"

    const-string/jumbo v1, "unregister setting observer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListObserver;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
