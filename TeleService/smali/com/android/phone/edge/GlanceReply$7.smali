.class Lcom/android/phone/edge/GlanceReply$7;
.super Ljava/lang/Object;
.source "GlanceReply.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/edge/GlanceReply;->alertEmptyMessage(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/edge/GlanceReply;

.field final synthetic val$value:Z


# direct methods
.method constructor <init>(Lcom/android/phone/edge/GlanceReply;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/edge/GlanceReply$7;->this$0:Lcom/android/phone/edge/GlanceReply;

    iput-boolean p2, p0, Lcom/android/phone/edge/GlanceReply$7;->val$value:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/edge/GlanceReply$7;->this$0:Lcom/android/phone/edge/GlanceReply;

    invoke-virtual {v0}, Lcom/android/phone/edge/GlanceReply;->changeDefaultMessage()V

    iget-object v0, p0, Lcom/android/phone/edge/GlanceReply$7;->this$0:Lcom/android/phone/edge/GlanceReply;

    invoke-virtual {v0}, Lcom/android/phone/edge/GlanceReply;->finish()V

    iget-object v0, p0, Lcom/android/phone/edge/GlanceReply$7;->this$0:Lcom/android/phone/edge/GlanceReply;

    iget-boolean v1, p0, Lcom/android/phone/edge/GlanceReply$7;->val$value:Z

    invoke-static {v0, v1}, Lcom/android/phone/edge/GlanceReplyManager;->setGlanceReplyState(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/android/phone/edge/GlanceReply$7;->this$0:Lcom/android/phone/edge/GlanceReply;

    iget-boolean v1, p0, Lcom/android/phone/edge/GlanceReply$7;->val$value:Z

    invoke-static {v0, v1}, Lcom/android/phone/edge/GlanceReply;->-wrap2(Lcom/android/phone/edge/GlanceReply;Z)V

    return-void
.end method
