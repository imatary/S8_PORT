.class Lcom/android/phone/edge/GlanceReply$6;
.super Ljava/lang/Object;
.source "GlanceReply.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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


# direct methods
.method constructor <init>(Lcom/android/phone/edge/GlanceReply;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/edge/GlanceReply$6;->this$0:Lcom/android/phone/edge/GlanceReply;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    iget-object v0, p0, Lcom/android/phone/edge/GlanceReply$6;->this$0:Lcom/android/phone/edge/GlanceReply;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/edge/GlanceReply;->-wrap3(Lcom/android/phone/edge/GlanceReply;Z)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
