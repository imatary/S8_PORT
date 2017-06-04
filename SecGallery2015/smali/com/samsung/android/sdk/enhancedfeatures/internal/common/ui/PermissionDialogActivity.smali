.class public Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;
.super Landroid/app/Activity;
.source "PermissionDialogActivity.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mPermissionDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 33

    const-string/jumbo v29, "onCreate."

    sget-object v30, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;->TAG:Ljava/lang/String;

    invoke-static/range {v29 .. v30}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v29

    const-string/jumbo v30, "permission"

    invoke-virtual/range {v29 .. v30}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v29

    const-string/jumbo v30, "functionname"

    invoke-virtual/range {v29 .. v30}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v29

    const-string/jumbo v30, "noti"

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v19

    const/16 v29, 0x1

    move/from16 v0, v19

    move/from16 v1, v29

    if-ne v0, v1, :cond_0

    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v29, "android.settings.APPLICATION_DETAILS_SETTINGS"

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "package:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;->getPackageName()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;->startActivity(Landroid/content/Intent;)V

    const-string/jumbo v29, "notification"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/app/NotificationManager;

    const-string/jumbo v29, "COREAPPS_PERMISSION_NOTI"

    const/16 v30, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    if-nez v21, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;->finish()V

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_1
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v5, v0, :cond_a

    aget-object v30, v21, v5

    const/16 v29, -0x1

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->hashCode()I

    move-result v31

    sparse-switch v31, :sswitch_data_0

    :cond_2
    :goto_2
    packed-switch v29, :pswitch_data_0

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :sswitch_0
    const-string/jumbo v31, "PHONE_STATE"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_2

    const/16 v29, 0x0

    goto :goto_2

    :sswitch_1
    const-string/jumbo v31, "CONTACTS"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_2

    const/16 v29, 0x1

    goto :goto_2

    :sswitch_2
    const-string/jumbo v31, "EXTERNAL_STORAGE"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_2

    const/16 v29, 0x2

    goto :goto_2

    :sswitch_3
    const-string/jumbo v31, "SMS"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_2

    const/16 v29, 0x3

    goto :goto_2

    :pswitch_0
    const-string/jumbo v29, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v29

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_3

    const-string/jumbo v29, "PERMISSION_PHONE"

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v29, "PHONE PERMISSION DENIED"

    sget-object v30, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;->TAG:Ljava/lang/String;

    invoke-static/range {v29 .. v30}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    const-string/jumbo v29, "PHONE PERMISSION ALREADY GRANTED"

    sget-object v30, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;->TAG:Ljava/lang/String;

    invoke-static/range {v29 .. v30}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :pswitch_1
    const-string/jumbo v29, "android.permission.READ_CONTACTS"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v29

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_4

    const-string/jumbo v29, "android.permission.WRITE_CONTACTS"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v29

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_5

    :cond_4
    const-string/jumbo v29, "PERMISSION_CONTACTS"

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v29, "CONTACTS PERMISSION DENIED"

    sget-object v30, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;->TAG:Ljava/lang/String;

    invoke-static/range {v29 .. v30}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_5
    const-string/jumbo v29, "CONTACTS PERMISSION ALREADY GRANTED"

    sget-object v30, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;->TAG:Ljava/lang/String;

    invoke-static/range {v29 .. v30}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_2
    const-string/jumbo v29, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v29

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_6

    const-string/jumbo v29, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v29

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_7

    :cond_6
    const-string/jumbo v29, "PERMISSION_STORAGE"

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v29, "STORAGE PERMISSION DENIED"

    sget-object v30, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;->TAG:Ljava/lang/String;

    invoke-static/range {v29 .. v30}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_7
    const-string/jumbo v29, "STORAGE PERMISSION ALREADY GRANTED"

    sget-object v30, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;->TAG:Ljava/lang/String;

    invoke-static/range {v29 .. v30}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_3
    const-string/jumbo v29, "android.permission.SEND_SMS"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v29

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_8

    const-string/jumbo v29, "android.permission.READ_SMS"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v29

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_9

    :cond_8
    const-string/jumbo v29, "PERMISSION_SMS"

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v29, "SMS PERMISSION DENIED"

    sget-object v30, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;->TAG:Ljava/lang/String;

    invoke-static/range {v29 .. v30}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_9
    const-string/jumbo v29, "SMS PERMISSION ALREADY GRANTED"

    sget-object v30, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;->TAG:Ljava/lang/String;

    invoke-static/range {v29 .. v30}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_a
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v29

    if-nez v29, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;->finish()V

    goto/16 :goto_0

    :cond_b
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "permissionList Size : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    sget-object v30, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;->TAG:Ljava/lang/String;

    invoke-static/range {v29 .. v30}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v29

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [Ljava/lang/String;

    if-nez v4, :cond_d

    sget v29, Lcom/samsung/android/sdk/enhancedfeatures/R$string;->dialog_permission_app_desc:I

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    sget v32, Lcom/samsung/android/sdk/enhancedfeatures/R$string;->app_name:I

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :goto_4
    const/16 v29, 0x1

    move/from16 v0, v29

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v29

    sget v30, Lcom/samsung/android/sdk/enhancedfeatures/R$layout;->layout_permission_dialog_view:I

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    sget v29, Lcom/samsung/android/sdk/enhancedfeatures/R$id;->permission_dialog_Telephone:I

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout;

    sget v29, Lcom/samsung/android/sdk/enhancedfeatures/R$id;->permission_dialog_Contacts:I

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    sget v29, Lcom/samsung/android/sdk/enhancedfeatures/R$id;->permission_dialog_Storage:I

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    sget v29, Lcom/samsung/android/sdk/enhancedfeatures/R$id;->permission_dialog_SMS:I

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    sget v29, Lcom/samsung/android/sdk/enhancedfeatures/R$id;->permission_dialog_Telephone_icon:I

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    sget v29, Lcom/samsung/android/sdk/enhancedfeatures/R$id;->permission_dialog_Telephone_name:I

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    sget v29, Lcom/samsung/android/sdk/enhancedfeatures/R$id;->permission_dialog_Contacts_icon:I

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    sget v29, Lcom/samsung/android/sdk/enhancedfeatures/R$id;->permission_dialog_Contacts_name:I

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    sget v29, Lcom/samsung/android/sdk/enhancedfeatures/R$id;->permission_dialog_Storage_icon:I

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    sget v29, Lcom/samsung/android/sdk/enhancedfeatures/R$id;->permission_dialog_Storage_name:I

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    sget v29, Lcom/samsung/android/sdk/enhancedfeatures/R$id;->permission_dialog_SMS_icon:I

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    sget v29, Lcom/samsung/android/sdk/enhancedfeatures/R$id;->permission_dialog_SMS_name:I

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    const/4 v5, 0x0

    :goto_5
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v5, v0, :cond_e

    aget-object v30, v22, v5

    const/16 v29, -0x1

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->hashCode()I

    move-result v31

    sparse-switch v31, :sswitch_data_1

    :cond_c
    :goto_6
    packed-switch v29, :pswitch_data_1

    const-string/jumbo v29, "default. All layout is GONE"

    sget-object v30, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;->TAG:Ljava/lang/String;

    invoke-static/range {v29 .. v30}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v29, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/16 v29, 0x8

    move/from16 v0, v29

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/16 v29, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/16 v29, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_d
    sget v29, Lcom/samsung/android/sdk/enhancedfeatures/R$string;->dialog_permission_function_desc:I

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aput-object v4, v30, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_4

    :sswitch_4
    const-string/jumbo v31, "PERMISSION_PHONE"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_c

    const/16 v29, 0x0

    goto :goto_6

    :sswitch_5
    const-string/jumbo v31, "PERMISSION_CONTACTS"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_c

    const/16 v29, 0x1

    goto :goto_6

    :sswitch_6
    const-string/jumbo v31, "PERMISSION_STORAGE"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_c

    const/16 v29, 0x2

    goto :goto_6

    :sswitch_7
    const-string/jumbo v31, "PERMISSION_SMS"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_c

    const/16 v29, 0x3

    goto :goto_6

    :pswitch_4
    const/16 v29, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v29

    const-string/jumbo v30, "perm_group_phone_calls"

    const-string/jumbo v31, "drawable"

    const-string/jumbo v32, "android"

    invoke-virtual/range {v29 .. v32}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v29

    move/from16 v0, v29

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v29

    const-string/jumbo v30, "permgrouplab_phone"

    const-string/jumbo v31, "string"

    const-string/jumbo v32, "android"

    invoke-virtual/range {v29 .. v32}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :pswitch_5
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v29

    const-string/jumbo v30, "perm_group_contacts"

    const-string/jumbo v31, "drawable"

    const-string/jumbo v32, "android"

    invoke-virtual/range {v29 .. v32}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v29

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v29

    const-string/jumbo v30, "permgrouplab_contacts"

    const-string/jumbo v31, "string"

    const-string/jumbo v32, "android"

    invoke-virtual/range {v29 .. v32}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :pswitch_6
    const/16 v29, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v29

    const-string/jumbo v30, "perm_group_storage"

    const-string/jumbo v31, "drawable"

    const-string/jumbo v32, "android"

    invoke-virtual/range {v29 .. v32}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v29

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v29

    const-string/jumbo v30, "permgrouplab_storage"

    const-string/jumbo v31, "string"

    const-string/jumbo v32, "android"

    invoke-virtual/range {v29 .. v32}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :pswitch_7
    const/16 v29, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v29

    const-string/jumbo v30, "perm_group_sms"

    const-string/jumbo v31, "drawable"

    const-string/jumbo v32, "android"

    invoke-virtual/range {v29 .. v32}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v29

    move/from16 v0, v29

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v29

    const-string/jumbo v30, "permgrouplab_sms"

    const-string/jumbo v31, "string"

    const-string/jumbo v32, "android"

    invoke-virtual/range {v29 .. v32}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :cond_e
    sget v29, Lcom/samsung/android/sdk/enhancedfeatures/R$string;->settings:I

    new-instance v30, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity$1;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;)V

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v3, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    sget v29, Lcom/samsung/android/sdk/enhancedfeatures/R$string;->cancel:I

    new-instance v30, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity$2;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity$2;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;)V

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v3, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v29, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity$3;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity$3;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;)V

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    new-instance v29, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity$4;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity$4;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;)V

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;->mPermissionDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;->mPermissionDialog:Landroid/app/AlertDialog;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x73433dc0 -> :sswitch_0
        0x14139 -> :sswitch_3
        0xcd35053 -> :sswitch_1
        0x3c6bcde7 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x6d697d22 -> :sswitch_4
        -0x3c5d973d -> :sswitch_5
        -0x5d01815 -> :sswitch_6
        0x2860a2c9 -> :sswitch_7
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method
