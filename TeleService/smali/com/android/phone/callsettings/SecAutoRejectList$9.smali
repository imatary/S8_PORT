.class Lcom/android/phone/callsettings/SecAutoRejectList$9;
.super Ljava/lang/Object;
.source "SecAutoRejectList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/SecAutoRejectList;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

.field final synthetic val$categoryCheckedItems:[Z


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/SecAutoRejectList;[Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/SecAutoRejectList$9;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    iput-object p2, p0, Lcom/android/phone/callsettings/SecAutoRejectList$9;->val$categoryCheckedItems:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectList$9;->val$categoryCheckedItems:[Z

    aput-boolean p3, v0, p2

    return-void
.end method
