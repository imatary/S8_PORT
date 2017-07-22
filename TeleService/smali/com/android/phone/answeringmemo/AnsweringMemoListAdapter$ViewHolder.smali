.class Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "AnsweringMemoListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field _id:J

.field checkBox:Landroid/widget/CheckBox;

.field date:Landroid/widget/TextView;

.field displayName:Ljava/lang/String;

.field duration:Landroid/widget/TextView;

.field heardStatus:Landroid/widget/ImageView;

.field name:Landroid/widget/TextView;

.field phoneNumber:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;


# direct methods
.method constructor <init>(Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter$ViewHolder;->this$0:Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
