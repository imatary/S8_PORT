.class Lcom/android/phone/callsettings/AutoRejectVideoCallList$3;
.super Ljava/lang/Object;
.source "AutoRejectVideoCallList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/AutoRejectVideoCallList;->initLayout(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$3;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$3;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-static {v4}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-get14(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$3;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-static {v4}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-wrap8(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p3, :cond_3

    iget-object v4, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$3;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-static {v4}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-get6(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;

    iget v4, v4, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->checked:I

    if-eqz v4, :cond_2

    const/4 v1, 0x0

    :goto_1
    iget-object v4, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$3;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-static {v4}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-get6(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;

    iput v1, v4, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->checked:I

    iget-object v4, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$3;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-virtual {v4}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "unknown_videocall_mode"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v4, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$3;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-static {v4}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-get5(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->notifyDataSetInvalidated()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v4, v2, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;

    if-eqz v4, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;

    if-eqz v3, :cond_0

    iget-object v0, v3, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->checkbox:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    goto :goto_0
.end method
