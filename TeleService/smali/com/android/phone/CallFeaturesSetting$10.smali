.class Lcom/android/phone/CallFeaturesSetting$10;
.super Ljava/lang/Object;
.source "CallFeaturesSetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CallFeaturesSetting;->setVoicemailActionBar(Landroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallFeaturesSetting;

.field final synthetic val$dlg:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/android/phone/CallFeaturesSetting;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/CallFeaturesSetting$10;->this$0:Lcom/android/phone/CallFeaturesSetting;

    iput-object p2, p0, Lcom/android/phone/CallFeaturesSetting$10;->val$dlg:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$10;->val$dlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
