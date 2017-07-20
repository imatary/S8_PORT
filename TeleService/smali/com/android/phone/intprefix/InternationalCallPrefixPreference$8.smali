.class Lcom/android/phone/intprefix/InternationalCallPrefixPreference$8;
.super Ljava/lang/Object;
.source "InternationalCallPrefixPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->showAlertDialogDelete(Landroid/preference/Preference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/intprefix/InternationalCallPrefixPreference;

.field final synthetic val$setDeletePosition:[Z


# direct methods
.method constructor <init>(Lcom/android/phone/intprefix/InternationalCallPrefixPreference;[Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/intprefix/InternationalCallPrefixPreference$8;->this$0:Lcom/android/phone/intprefix/InternationalCallPrefixPreference;

    iput-object p2, p0, Lcom/android/phone/intprefix/InternationalCallPrefixPreference$8;->val$setDeletePosition:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/intprefix/InternationalCallPrefixPreference$8;->val$setDeletePosition:[Z

    aput-boolean p3, v0, p2

    return-void
.end method
