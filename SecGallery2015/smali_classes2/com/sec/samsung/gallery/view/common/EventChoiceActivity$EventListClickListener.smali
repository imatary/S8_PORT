.class Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListClickListener;
.super Ljava/lang/Object;
.source "EventChoiceActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventListClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListClickListener;->this$0:Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListClickListener;-><init>(Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const-string/jumbo v0, "EventChoiceActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onItemClick mEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListClickListener;->this$0:Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->access$900(Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListClickListener;->this$0:Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->access$1000(Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListClickListener;->this$0:Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->access$1100(Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "DC_EXECUTE_FROM_BIXBY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListClickListener;->this$0:Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->access$1200(Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;Z)V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity$EventListClickListener;->this$0:Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;

    invoke-static {v0, p3}, Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;->access$1300(Lcom/sec/samsung/gallery/view/common/EventChoiceActivity;I)V

    goto :goto_0
.end method
