.class Lcom/android/phone/callsettings/SecDeletePrefixList$6;
.super Ljava/lang/Object;
.source "SecDeletePrefixList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/SecDeletePrefixList;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/SecDeletePrefixList;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/SecDeletePrefixList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/SecDeletePrefixList$6;->this$0:Lcom/android/phone/callsettings/SecDeletePrefixList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/SecDeletePrefixList$6;->this$0:Lcom/android/phone/callsettings/SecDeletePrefixList;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/SecDeletePrefixList;->clickSaveBtn()V

    return-void
.end method
