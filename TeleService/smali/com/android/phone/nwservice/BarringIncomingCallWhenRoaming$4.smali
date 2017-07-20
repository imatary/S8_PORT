.class Lcom/android/phone/nwservice/BarringIncomingCallWhenRoaming$4;
.super Ljava/lang/Object;
.source "BarringIncomingCallWhenRoaming.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/nwservice/BarringIncomingCallWhenRoaming;->showAlertDialogWarning(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/nwservice/BarringIncomingCallWhenRoaming;

.field final synthetic val$kind:I


# direct methods
.method constructor <init>(Lcom/android/phone/nwservice/BarringIncomingCallWhenRoaming;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/nwservice/BarringIncomingCallWhenRoaming$4;->this$0:Lcom/android/phone/nwservice/BarringIncomingCallWhenRoaming;

    iput p2, p0, Lcom/android/phone/nwservice/BarringIncomingCallWhenRoaming$4;->val$kind:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/nwservice/BarringIncomingCallWhenRoaming$4;->this$0:Lcom/android/phone/nwservice/BarringIncomingCallWhenRoaming;

    iget v1, p0, Lcom/android/phone/nwservice/BarringIncomingCallWhenRoaming$4;->val$kind:I

    invoke-static {v0, v1}, Lcom/android/phone/nwservice/BarringIncomingCallWhenRoaming;->-wrap1(Lcom/android/phone/nwservice/BarringIncomingCallWhenRoaming;I)V

    return-void
.end method
