.class final Lcom/sec/samsung/gallery/access/cmh/CMHAutoItemInterface$1;
.super Ljava/lang/Thread;
.source "CMHAutoItemInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/access/cmh/CMHAutoItemInterface;->updateAutoItem(Landroid/content/Context;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$status:I

.field final synthetic val$storyType:I


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;II)V
    .locals 0

    iput-object p2, p0, Lcom/sec/samsung/gallery/access/cmh/CMHAutoItemInterface$1;->val$context:Landroid/content/Context;

    iput p3, p0, Lcom/sec/samsung/gallery/access/cmh/CMHAutoItemInterface$1;->val$storyType:I

    iput p4, p0, Lcom/sec/samsung/gallery/access/cmh/CMHAutoItemInterface$1;->val$status:I

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/access/cmh/CMHAutoItemInterface$1;->val$context:Landroid/content/Context;

    iget v1, p0, Lcom/sec/samsung/gallery/access/cmh/CMHAutoItemInterface$1;->val$storyType:I

    iget v2, p0, Lcom/sec/samsung/gallery/access/cmh/CMHAutoItemInterface$1;->val$status:I

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/access/cmh/CMHAutoItemInterface;->access$000(Landroid/content/Context;II)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "CMHAutoItemInterface"

    const-string/jumbo v1, "updateAutoItem failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
