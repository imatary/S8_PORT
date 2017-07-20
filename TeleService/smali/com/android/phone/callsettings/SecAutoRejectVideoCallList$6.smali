.class Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$6;
.super Ljava/lang/Object;
.source "SecAutoRejectVideoCallList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$6;->this$0:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->clickSaveBtn()V

    return-void
.end method
