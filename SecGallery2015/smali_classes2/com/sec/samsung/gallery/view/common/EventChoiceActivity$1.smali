.class Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$1;
.super Ljava/lang/Object;
.source "EventChoiceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->startLoadChannelAlbumSet()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$1;->this$0:Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$1;->this$0:Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;

    # invokes: Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->loadChannelAlbumSet()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->access$600(Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;)V

    return-void
.end method
