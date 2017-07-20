.class Lcom/android/phone/intprefix/InternationalCallPrefixPreference$2;
.super Ljava/lang/Object;
.source "InternationalCallPrefixPreference.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->launchEditDialog(Landroid/preference/Preference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/intprefix/InternationalCallPrefixPreference;

.field final synthetic val$editCode:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/phone/intprefix/InternationalCallPrefixPreference;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/intprefix/InternationalCallPrefixPreference$2;->this$0:Lcom/android/phone/intprefix/InternationalCallPrefixPreference;

    iput-object p2, p0, Lcom/android/phone/intprefix/InternationalCallPrefixPreference$2;->val$editCode:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/intprefix/InternationalCallPrefixPreference$2;->val$editCode:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/intprefix/InternationalCallPrefixPreference$2;->val$editCode:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method
