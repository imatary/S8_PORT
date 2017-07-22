.class Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$5;
.super Ljava/lang/Object;
.source "RejectCallWithMsgIconMode.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
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

    iput-object p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode$5;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    invoke-static {v1}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->-get12(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->-wrap1(Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
