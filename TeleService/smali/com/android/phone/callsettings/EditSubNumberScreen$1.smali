.class Lcom/android/phone/callsettings/EditSubNumberScreen$1;
.super Ljava/lang/Object;
.source "EditSubNumberScreen.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/EditSubNumberScreen;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/EditSubNumberScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/EditSubNumberScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/EditSubNumberScreen$1;->this$0:Lcom/android/phone/callsettings/EditSubNumberScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/phone/callsettings/EditSubNumberScreen$1;->this$0:Lcom/android/phone/callsettings/EditSubNumberScreen;

    iput p3, v0, Lcom/android/phone/callsettings/EditSubNumberScreen;->subTypeSelect:I

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    return-void
.end method
