.class Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$4;
.super Ljava/lang/Object;
.source "AutoRejectVideoCallList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->drawNormalScreen(ILandroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$4;->this$1:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;

    iput p2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$4;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$4;->this$1:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    const-string/jumbo v2, "wjshin text_layout onClick"

    invoke-static {v1, v2}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-wrap3(Lcom/android/phone/callsettings/AutoRejectVideoCallList;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$4;->this$1:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-static {v1}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-get2(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Landroid/view/ActionMode;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$4;->this$1:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-static {v1}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-get13(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Landroid/widget/ListView;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$4;->val$position:I

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v0

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$4;->this$1:Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-static {v1}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-get13(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Landroid/widget/ListView;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$4;->val$position:I

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v3, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    return-void

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
