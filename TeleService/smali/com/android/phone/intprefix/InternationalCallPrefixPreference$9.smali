.class Lcom/android/phone/intprefix/InternationalCallPrefixPreference$9;
.super Ljava/lang/Object;
.source "InternationalCallPrefixPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$arrayDeleteNumber:[I

.field final synthetic val$deletelist:[Ljava/lang/CharSequence;

.field final synthetic val$pref:Landroid/preference/Preference;

.field final synthetic val$setDeletePosition:[Z


# direct methods
.method constructor <init>(Lcom/android/phone/intprefix/InternationalCallPrefixPreference;Landroid/preference/Preference;[Z[I[Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/intprefix/InternationalCallPrefixPreference$9;->this$0:Lcom/android/phone/intprefix/InternationalCallPrefixPreference;

    iput-object p2, p0, Lcom/android/phone/intprefix/InternationalCallPrefixPreference$9;->val$pref:Landroid/preference/Preference;

    iput-object p3, p0, Lcom/android/phone/intprefix/InternationalCallPrefixPreference$9;->val$setDeletePosition:[Z

    iput-object p4, p0, Lcom/android/phone/intprefix/InternationalCallPrefixPreference$9;->val$arrayDeleteNumber:[I

    iput-object p5, p0, Lcom/android/phone/intprefix/InternationalCallPrefixPreference$9;->val$deletelist:[Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object v1, p0, Lcom/android/phone/intprefix/InternationalCallPrefixPreference$9;->val$pref:Landroid/preference/Preference;

    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    iget-object v1, p0, Lcom/android/phone/intprefix/InternationalCallPrefixPreference$9;->this$0:Lcom/android/phone/intprefix/InternationalCallPrefixPreference;

    iget-object v2, p0, Lcom/android/phone/intprefix/InternationalCallPrefixPreference$9;->val$setDeletePosition:[Z

    iget-object v3, p0, Lcom/android/phone/intprefix/InternationalCallPrefixPreference$9;->val$arrayDeleteNumber:[I

    iget-object v4, p0, Lcom/android/phone/intprefix/InternationalCallPrefixPreference$9;->val$deletelist:[Ljava/lang/CharSequence;

    array-length v4, v4

    invoke-static {v1, v2, v0, v3, v4}, Lcom/android/phone/intprefix/InternationalCallPrefixPreference;->-wrap3(Lcom/android/phone/intprefix/InternationalCallPrefixPreference;[ZI[II)V

    return-void
.end method
