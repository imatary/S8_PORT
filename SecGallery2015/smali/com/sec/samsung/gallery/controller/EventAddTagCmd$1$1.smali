.class Lcom/sec/samsung/gallery/controller/EventAddTagCmd$1$1;
.super Ljava/lang/Object;
.source "EventAddTagCmd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/EventAddTagCmd$1;->onCompleted(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/controller/EventAddTagCmd$1;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/EventAddTagCmd$1;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/EventAddTagCmd$1$1;->this$1:Lcom/sec/samsung/gallery/controller/EventAddTagCmd$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/EventAddTagCmd$1$1;->this$1:Lcom/sec/samsung/gallery/controller/EventAddTagCmd$1;

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/EventAddTagCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/EventAddTagCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/EventAddTagCmd;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/EventAddTagCmd;->access$100(Lcom/sec/samsung/gallery/controller/EventAddTagCmd;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/EventAddTagCmd$1$1;->this$1:Lcom/sec/samsung/gallery/controller/EventAddTagCmd$1;

    # invokes: Lcom/sec/samsung/gallery/controller/EventAddTagCmd$1;->getToastText()Ljava/lang/CharSequence;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/EventAddTagCmd$1;->access$300(Lcom/sec/samsung/gallery/controller/EventAddTagCmd$1;)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
