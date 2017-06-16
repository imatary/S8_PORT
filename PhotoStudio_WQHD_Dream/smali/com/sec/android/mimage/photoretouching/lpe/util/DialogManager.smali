.class public Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;
.super Ljava/lang/Object;
.source "DialogManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$DialogListener;
    }
.end annotation


# static fields
.field public static final DIALOG_ACTION_DISMISS:I = 0x0

.field public static final DIALOG_ACTION_NO:I = 0x1

.field public static final DIALOG_ID_DELETE_LAYER:I = 0x0

.field public static final DIALOG_ID_EXIT_CONFIRMATION:I = 0x1

.field public static final DIALOG_ID_EXIT_SUPERIMPOSE:I = 0x4

.field public static final DIALOG_ID_REDO_ALL:I = 0x8

.field public static final DIALOG_ID_SAVE_AS:I = 0x6

.field public static final DIALOG_ID_SAVE_CURRENT_LAYER:I = 0x2

.field public static final DIALOG_ID_SAVE_DISCARD_EXIT:I = 0xa

.field public static final DIALOG_ID_SAVE_DISCARD_EXIT_DISABLE_SAVE:I = 0xc

.field public static final DIALOG_ID_SAVE_DISCARD_EXIT_ON_LAUNCH_MODE:I = 0xb

.field public static final DIALOG_ID_SELECT_BACKGROUND:I = 0x3

.field public static final DIALOG_ID_SELECT_BRUSH_SIZE:I = 0x5

.field public static final DIALOG_ID_UNDO_ALL:I = 0x7

.field public static final DIALOG_SPEN_INSTALL:I = 0x9


# instance fields
.field private mCancelListener:Landroid/content/DialogInterface$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mCurrDialog:Landroid/app/Dialog;

.field private mCurrDialogId:I

.field public mDialogInputs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mDialogListener:Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$DialogListener;

.field private mNoListener:Landroid/content/DialogInterface$OnClickListener;

.field private mOkListener:Landroid/content/DialogInterface$OnClickListener;

.field private mProgressDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mDialogInputs:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mProgressDialog:Landroid/app/Dialog;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$1;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$1;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mOkListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$2;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$2;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$3;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$3;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mNoListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;)Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$DialogListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mDialogListener:Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$DialogListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mCurrDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mProgressDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mProgressDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method private showDialog()V
    .locals 26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mCurrDialogId:I

    move/from16 v22, v0

    packed-switch v22, :pswitch_data_0

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isThemeInstalled(Landroid/content/Context;)Z

    move-result v22

    if-eqz v22, :cond_1

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isA9Device()Z

    move-result v22

    if-eqz v22, :cond_5

    :cond_1
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isA9Device()Z

    move-result v22

    if-eqz v22, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mCurrDialog:Landroid/app/Dialog;

    move-object/from16 v22, v0

    const v23, 0x102000b

    invoke-virtual/range {v22 .. v23}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    const/16 v22, 0x2

    const/high16 v23, 0x41880000    # 17.0f

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mCurrDialog:Landroid/app/Dialog;

    move-object/from16 v22, v0

    check-cast v22, Landroid/app/AlertDialog;

    const/16 v23, -0x1

    invoke-virtual/range {v22 .. v23}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v7

    if-eqz v7, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0c00b1

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getColor(I)I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setTextColor(I)V

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isA9Device()Z

    move-result v22

    if-eqz v22, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0c00b0

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getColor(I)I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setTextColor(I)V

    const/16 v22, 0x2

    const/high16 v23, 0x41800000    # 16.0f

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v7, v0, v1}, Landroid/widget/Button;->setTextSize(IF)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mCurrDialog:Landroid/app/Dialog;

    move-object/from16 v22, v0

    check-cast v22, Landroid/app/AlertDialog;

    const/16 v23, -0x3

    invoke-virtual/range {v22 .. v23}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v6

    if-eqz v6, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0c00b1

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getColor(I)I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setTextColor(I)V

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isA9Device()Z

    move-result v22

    if-eqz v22, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0c00b0

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getColor(I)I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setTextColor(I)V

    const/16 v22, 0x2

    const/high16 v23, 0x41800000    # 16.0f

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v6, v0, v1}, Landroid/widget/Button;->setTextSize(IF)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mCurrDialog:Landroid/app/Dialog;

    move-object/from16 v22, v0

    check-cast v22, Landroid/app/AlertDialog;

    const/16 v23, -0x2

    invoke-virtual/range {v22 .. v23}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v5

    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0c00b1

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getColor(I)I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setTextColor(I)V

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isA9Device()Z

    move-result v22

    if-eqz v22, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0c00b0

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getColor(I)I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setTextColor(I)V

    const/16 v22, 0x2

    const/high16 v23, 0x41800000    # 16.0f

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v5, v0, v1}, Landroid/widget/Button;->setTextSize(IF)V

    :cond_5
    return-void

    :pswitch_0
    new-instance v22, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v23, 0x7f0703a8

    invoke-virtual/range {v22 .. v23}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v23

    new-instance v24, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mDialogInputs:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    const/16 v25, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/graphics/Bitmap;

    check-cast v22, Landroid/graphics/Bitmap;

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual/range {v23 .. v24}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const v25, 0x7f0703da

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mDialogInputs:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f070197

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mOkListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f070092

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mCurrDialog:Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mCurrDialog:Landroid/app/Dialog;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    :pswitch_1
    new-instance v22, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v23, 0x7f070070

    invoke-virtual/range {v22 .. v23}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f0703b0

    invoke-virtual/range {v22 .. v23}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f070197

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mOkListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f070092

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mCurrDialog:Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mCurrDialog:Landroid/app/Dialog;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    :pswitch_2
    new-instance v22, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v23, 0x7f070070

    invoke-virtual/range {v22 .. v23}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f0703cb

    invoke-virtual/range {v22 .. v23}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f070197

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mOkListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f070092

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f070181

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mNoListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mCurrDialog:Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mCurrDialog:Landroid/app/Dialog;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    :pswitch_3
    new-instance v15, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-direct {v15, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v17, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v22, -0x2

    const/16 v23, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mDialogInputs:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/SparseArray;

    const/4 v11, 0x0

    :goto_1
    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v11, v0, :cond_6

    new-instance v12, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-direct {v12, v0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/ImageButton;->setClickable(Z)V

    const/16 v22, 0xfa

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/ImageButton;->setMinimumHeight(I)V

    const/16 v22, 0xfa

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/ImageButton;->setMinimumWidth(I)V

    sget-object v22, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v17, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v22, -0x2

    const/16 v23, -0x2

    const/high16 v24, 0x3f800000    # 1.0f

    move-object/from16 v0, v17

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v22, 0x32

    const/16 v23, 0x32

    const/16 v24, 0x32

    const/16 v25, 0x32

    move-object/from16 v0, v17

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/16 v22, 0x14

    const/16 v23, 0x14

    const/16 v24, 0x14

    const/16 v25, 0x14

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/widget/ImageButton;->setPadding(IIII)V

    invoke-virtual {v13, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v13, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;->getLayerId()I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/ImageButton;->setId(I)V

    new-instance v22, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$4;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12}, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$4;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;Landroid/widget/ImageButton;)V

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v15, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    :cond_6
    new-instance v22, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v23, "Select Background"

    invoke-virtual/range {v22 .. v23}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mCurrDialog:Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mCurrDialog:Landroid/app/Dialog;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    :pswitch_4
    new-instance v22, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v23, 0x7f070070

    invoke-virtual/range {v22 .. v23}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f0703b1

    invoke-virtual/range {v22 .. v23}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f070197

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mOkListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f070181

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mNoListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mCurrDialog:Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mCurrDialog:Landroid/app/Dialog;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    :pswitch_5
    new-instance v14, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-direct {v14, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v18, Landroid/widget/SeekBar;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    const/16 v22, 0x1f4

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMinimumWidth(I)V

    new-instance v21, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v22, 0x41c80000    # 25.0f

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v22, -0x1

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mDialogInputs:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v22, 0x14

    const/16 v23, 0x14

    const/16 v24, 0x14

    const/16 v25, 0x14

    invoke-virtual/range {v21 .. v25}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v22, 0x11

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v22, 0x14

    const/16 v23, 0x14

    const/16 v24, 0x14

    const/16 v25, 0x14

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/SeekBar;->setPadding(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mDialogInputs:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    add-int/lit8 v22, v22, -0x5

    mul-int/lit8 v22, v22, 0x64

    div-int/lit8 v22, v22, 0x2d

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    new-instance v22, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$5;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$5;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;Landroid/widget/TextView;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual/range {v18 .. v18}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v22, 0x41200000    # 10.0f

    move/from16 v0, v22

    move-object/from16 v1, v17

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v22, 0x3f800000    # 1.0f

    move/from16 v0, v22

    move-object/from16 v1, v17

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    new-instance v8, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-direct {v8, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v14}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mCurrDialog:Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mCurrDialog:Landroid/app/Dialog;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mCurrDialog:Landroid/app/Dialog;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v22

    new-instance v23, Landroid/graphics/drawable/ColorDrawable;

    const/16 v24, 0x0

    invoke-direct/range {v23 .. v24}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual/range {v22 .. v23}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mCurrDialog:Landroid/app/Dialog;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v22

    const/16 v23, 0x2

    invoke-virtual/range {v22 .. v23}, Landroid/view/Window;->clearFlags(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mCurrDialog:Landroid/app/Dialog;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    :pswitch_6
    new-instance v10, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-direct {v10, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    new-instance v22, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const v24, 0x7f0a00b8

    invoke-direct/range {v22 .. v24}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const-string v23, "Save As"

    invoke-virtual/range {v22 .. v23}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    const-string v23, "Enter File Name"

    invoke-virtual/range {v22 .. v23}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    const-string v23, "OK"

    new-instance v24, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$6;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v10}, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$6;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;Landroid/widget/EditText;)V

    invoke-virtual/range {v22 .. v24}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mCurrDialog:Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mCurrDialog:Landroid/app/Dialog;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    :pswitch_7
    new-instance v22, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const v24, 0x7f0a00b8

    invoke-direct/range {v22 .. v24}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v23, 0x7f070334

    invoke-virtual/range {v22 .. v23}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f070335

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mOkListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f070092

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mNoListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mCurrDialog:Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mCurrDialog:Landroid/app/Dialog;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    :pswitch_8
    new-instance v22, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const v24, 0x7f0a00b8

    invoke-direct/range {v22 .. v24}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v23, 0x7f07026a

    invoke-virtual/range {v22 .. v23}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f07026b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mOkListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f070092

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mNoListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mCurrDialog:Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mCurrDialog:Landroid/app/Dialog;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    :pswitch_9
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f07027b

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " SDK"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f07013c

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v9, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f07031c

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v9, v23, v24

    const/16 v24, 0x1

    aput-object v9, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    new-instance v22, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const v24, 0x7f0a00b8

    invoke-direct/range {v22 .. v24}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f070197

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mOkListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f070092

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mNoListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mCurrDialog:Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mCurrDialog:Landroid/app/Dialog;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/app/Dialog;->setCancelable(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mCurrDialog:Landroid/app/Dialog;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    :pswitch_a
    new-instance v22, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const v24, 0x7f0a00b8

    invoke-direct/range {v22 .. v24}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v23, 0x7f070289

    invoke-virtual/range {v22 .. v23}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f07027e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mOkListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f0700d5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mNoListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f070092

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mCurrDialog:Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mCurrDialog:Landroid/app/Dialog;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    :pswitch_b
    new-instance v22, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const v24, 0x7f0a00b8

    invoke-direct/range {v22 .. v24}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v23, 0x7f070062

    invoke-virtual/range {v22 .. v23}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f070355

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mOkListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f070181

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mNoListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f070092

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mCurrDialog:Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mCurrDialog:Landroid/app/Dialog;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    :pswitch_c
    new-instance v22, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const v24, 0x7f0a00b8

    invoke-direct/range {v22 .. v24}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v23, 0x7f070289

    invoke-virtual/range {v22 .. v23}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f07027e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mOkListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f0700d5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mNoListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f070092

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mCurrDialog:Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mCurrDialog:Landroid/app/Dialog;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/app/Dialog;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mCurrDialog:Landroid/app/Dialog;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mCurrDialog:Landroid/app/Dialog;

    move-object/from16 v22, v0

    check-cast v22, Landroid/app/AlertDialog;

    const/16 v23, -0x1

    invoke-virtual/range {v22 .. v23}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v22

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mCurrDialog:Landroid/app/Dialog;

    move-object/from16 v22, v0

    check-cast v22, Landroid/app/AlertDialog;

    const/16 v23, -0x1

    invoke-virtual/range {v22 .. v23}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method


# virtual methods
.method public cancelProgressDialog()V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mProgressDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public dismiss()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mCurrDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mCurrDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mCurrDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public makeProgressDialog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$7;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onLanguageChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mCurrDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mCurrDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mCurrDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->showDialog()V

    :cond_0
    return-void
.end method

.method public show(ILcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$DialogListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mDialogInputs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mDialogListener:Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$DialogListener;

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mCurrDialogId:I

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->showDialog()V

    return-void
.end method

.method public showBrushSizeDialog(ILcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$DialogListener;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mDialogInputs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mDialogInputs:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mDialogListener:Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$DialogListener;

    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mCurrDialogId:I

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->showDialog()V

    return-void
.end method

.method public showDeleteLayer(ILandroid/graphics/Bitmap;Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$DialogListener;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mDialogInputs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mDialogInputs:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mDialogInputs:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mDialogListener:Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$DialogListener;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mCurrDialogId:I

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->showDialog()V

    return-void
.end method

.method public showSelectBackgroundLayer(Landroid/util/SparseArray;Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$DialogListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerData;",
            ">;",
            "Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$DialogListener;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mDialogInputs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mDialogInputs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mDialogListener:Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$DialogListener;

    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->mCurrDialogId:I

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->showDialog()V

    return-void
.end method
