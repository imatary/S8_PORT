.class Lcom/android/phone/emergencydialer/EmergencyContactItem$9;
.super Ljava/lang/Object;
.source "EmergencyContactItem.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/emergencydialer/EmergencyContactItem;->addEmergencyService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/emergencydialer/EmergencyContactItem;

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/phone/emergencydialer/EmergencyContactItem;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem$9;->this$0:Lcom/android/phone/emergencydialer/EmergencyContactItem;

    iput-object p2, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem$9;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object v4, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem$9;->val$input:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    const-string/jumbo v4, "name"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "number"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string/jumbo v4, "content://com.android.contacts/emergency/service"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem$9;->this$0:Lcom/android/phone/emergencydialer/EmergencyContactItem;

    invoke-virtual {v4}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem$9;->this$0:Lcom/android/phone/emergencydialer/EmergencyContactItem;

    invoke-static {v4}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->-get4(Lcom/android/phone/emergencydialer/EmergencyContactItem;)Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->makeEmergencyContactQuery()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
