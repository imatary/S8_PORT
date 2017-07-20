.class Lcom/android/phone/edge/GlanceReply$4;
.super Ljava/lang/Object;
.source "GlanceReply.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/edge/GlanceReply;->initSubAppBar()V
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

    iput-object p1, p0, Lcom/android/phone/edge/GlanceReply$4;->this$0:Lcom/android/phone/edge/GlanceReply;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/phone/edge/GlanceReply$4;->this$0:Lcom/android/phone/edge/GlanceReply;

    invoke-static {v0, p2}, Lcom/android/phone/edge/GlanceReply;->-wrap0(Lcom/android/phone/edge/GlanceReply;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/edge/GlanceReply$4;->this$0:Lcom/android/phone/edge/GlanceReply;

    invoke-static {v0, p2}, Lcom/android/phone/edge/GlanceReply;->-wrap2(Lcom/android/phone/edge/GlanceReply;Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/edge/GlanceReply$4;->this$0:Lcom/android/phone/edge/GlanceReply;

    invoke-static {v0, p2}, Lcom/android/phone/edge/GlanceReply;->-wrap3(Lcom/android/phone/edge/GlanceReply;Z)V

    return-void
.end method
