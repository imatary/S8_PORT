.class Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$4;
.super Ljava/lang/Object;
.source "RejectCallWithMsgIconMode.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->createDragView(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$4;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-nez v0, :cond_0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$4;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    invoke-static {v2}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->-wrap3(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;)V

    const/4 v2, 0x1

    return v2

    :cond_0
    return v3
.end method
