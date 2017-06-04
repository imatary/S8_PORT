.class final Lcom/sec/samsung/gallery/util/DNIeModeHelper$1;
.super Ljava/lang/Object;
.source "DNIeModeHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/util/DNIeModeHelper;->setDNIeMode(Landroid/content/Context;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$mode:I


# direct methods
.method constructor <init>(ILandroid/content/Context;)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/util/DNIeModeHelper$1;->val$mode:I

    iput-object p2, p0, Lcom/sec/samsung/gallery/util/DNIeModeHelper$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string/jumbo v4, "sys.mdniecontrolservice.mscon"

    invoke-static {v4}, Lcom/sec/samsung/gallery/lib/factory/SystemPropertiesWrapper;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget v4, p0, Lcom/sec/samsung/gallery/util/DNIeModeHelper$1;->val$mode:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_1

    const-string/jumbo v4, "ACTION_DETAIL_VIEW_STATE_IN"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/util/DNIeModeHelper$1;->val$context:Landroid/content/Context;

    sget-object v5, Lcom/sec/samsung/gallery/lib/factory/UserHandleWrapper;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string/jumbo v4, "ACTION_DETAIL_VIEW_STATE_OUT"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    new-instance v2, Lcom/sec/samsung/gallery/lib/factory/MdnieManagerFactory;

    invoke-direct {v2}, Lcom/sec/samsung/gallery/lib/factory/MdnieManagerFactory;-><init>()V

    iget-object v4, p0, Lcom/sec/samsung/gallery/util/DNIeModeHelper$1;->val$context:Landroid/content/Context;

    invoke-interface {v2, v4}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/samsung/gallery/lib/libinterface/MdnieManagerInterface;

    if-eqz v3, :cond_0

    iget v4, p0, Lcom/sec/samsung/gallery/util/DNIeModeHelper$1;->val$mode:I

    invoke-interface {v3, v4}, Lcom/sec/samsung/gallery/lib/libinterface/MdnieManagerInterface;->setContentMode(I)V

    goto :goto_1
.end method
