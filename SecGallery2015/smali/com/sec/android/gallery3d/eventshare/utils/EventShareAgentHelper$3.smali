.class final Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper$3;
.super Ljava/lang/Object;
.source "EventShareAgentHelper.java"

# interfaces
.implements Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$registerOnListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->preprocessReceivedPush(Landroid/content/Context;Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$push:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper$3;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper$3;->val$intent:Landroid/content/Intent;

    iput p3, p0, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper$3;->val$push:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public registerOn(Z)V
    .locals 3

    const-string/jumbo v0, "EventShareAgentHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "register isSuccess : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper$3;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper$3;->val$intent:Landroid/content/Intent;

    iget v2, p0, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper$3;->val$push:I

    # invokes: Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->postprocessRecivedPush(Landroid/content/Context;Landroid/content/Intent;I)V
    invoke-static {v0, v1, v2}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->access$000(Landroid/content/Context;Landroid/content/Intent;I)V

    return-void
.end method
