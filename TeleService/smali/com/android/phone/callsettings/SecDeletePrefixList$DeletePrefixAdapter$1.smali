.class Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixAdapter$1;
.super Ljava/lang/Object;
.source "SecDeletePrefixList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixAdapter;->drawNormalScreen(ILandroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixAdapter;

.field final synthetic val$item:Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixItem;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixAdapter;Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixAdapter$1;->this$1:Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixAdapter;

    iput-object p2, p0, Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixAdapter$1;->val$item:Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixAdapter$1;->this$1:Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixAdapter;->this$0:Lcom/android/phone/callsettings/SecDeletePrefixList;

    iget-object v1, p0, Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixAdapter$1;->val$item:Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixItem;

    iget-object v1, v1, Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixItem;->id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/phone/callsettings/SecDeletePrefixList;->-wrap0(Lcom/android/phone/callsettings/SecDeletePrefixList;I)V

    iget-object v0, p0, Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixAdapter$1;->this$1:Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixAdapter;->this$0:Lcom/android/phone/callsettings/SecDeletePrefixList;

    iget-object v1, p0, Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixAdapter$1;->this$1:Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixAdapter;

    iget-object v1, v1, Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixAdapter;->this$0:Lcom/android/phone/callsettings/SecDeletePrefixList;

    const v2, 0x7f0d05c3

    invoke-virtual {v1, v2}, Lcom/android/phone/callsettings/SecDeletePrefixList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/callsettings/SecDeletePrefixList;->-wrap1(Lcom/android/phone/callsettings/SecDeletePrefixList;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixAdapter$1;->this$1:Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixAdapter;->this$0:Lcom/android/phone/callsettings/SecDeletePrefixList;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/SecDeletePrefixList;->isAvailableAddbutton()V

    iget-object v0, p0, Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixAdapter$1;->this$1:Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixAdapter;->this$0:Lcom/android/phone/callsettings/SecDeletePrefixList;

    invoke-static {v0}, Lcom/android/phone/callsettings/SecDeletePrefixList;->-wrap4(Lcom/android/phone/callsettings/SecDeletePrefixList;)V

    return-void
.end method
