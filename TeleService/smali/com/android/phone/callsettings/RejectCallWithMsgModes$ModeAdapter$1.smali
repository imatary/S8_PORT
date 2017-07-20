.class Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter$1;
.super Ljava/lang/Object;
.source "RejectCallWithMsgModes.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter$1;->this$1:Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;

    iput p2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter$1;->this$1:Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;

    iget-object v1, v0, Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgModes;

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter$1;->this$1:Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;

    invoke-static {v0}, Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;->-get0(Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter$1;->val$position:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->-set0(Lcom/android/phone/callsettings/RejectCallWithMsgModes;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter$1;->this$1:Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgModes;

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter$1;->this$1:Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgModes;

    invoke-static {v1}, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->-get0(Lcom/android/phone/callsettings/RejectCallWithMsgModes;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->-wrap1(Lcom/android/phone/callsettings/RejectCallWithMsgModes;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter$1;->this$1:Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgModes;

    new-instance v1, Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter$1;->this$1:Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;

    iget-object v2, v2, Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgModes;

    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter$1;->this$1:Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;

    iget-object v3, v3, Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgModes;

    invoke-virtual {v3}, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter$1;->this$1:Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;

    iget-object v4, v4, Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgModes;

    invoke-static {v4}, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->-get3(Lcom/android/phone/callsettings/RejectCallWithMsgModes;)Ljava/util/ArrayList;

    move-result-object v4

    const v5, 0x7f0400be

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsgModes;Landroid/content/Context;ILjava/util/ArrayList;)V

    invoke-static {v0, v1}, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->-set1(Lcom/android/phone/callsettings/RejectCallWithMsgModes;Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;)Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter$1;->this$1:Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgModes;

    invoke-static {v0}, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->-get1(Lcom/android/phone/callsettings/RejectCallWithMsgModes;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter$1;->this$1:Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgModes;

    invoke-static {v1}, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->-get2(Lcom/android/phone/callsettings/RejectCallWithMsgModes;)Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter$1;->this$1:Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgModes;

    invoke-static {v0}, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->-get1(Lcom/android/phone/callsettings/RejectCallWithMsgModes;)Landroid/widget/ListView;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter$1;->val$position:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    return-void
.end method
