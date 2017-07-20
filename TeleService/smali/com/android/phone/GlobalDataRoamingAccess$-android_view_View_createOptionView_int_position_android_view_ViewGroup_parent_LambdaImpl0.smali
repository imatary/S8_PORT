.class final synthetic Lcom/android/phone/GlobalDataRoamingAccess$-android_view_View_createOptionView_int_position_android_view_ViewGroup_parent_LambdaImpl0;
.super Ljava/lang/Object;
.source "GlobalDataRoamingAccess.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/GlobalDataRoamingAccess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-android_view_View_createOptionView_int_position_android_view_ViewGroup_parent_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$position:I

.field private synthetic val$this:Lcom/android/phone/GlobalDataRoamingAccess;


# direct methods
.method public synthetic constructor <init>(Lcom/android/phone/GlobalDataRoamingAccess;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/phone/GlobalDataRoamingAccess$-android_view_View_createOptionView_int_position_android_view_ViewGroup_parent_LambdaImpl0;->val$this:Lcom/android/phone/GlobalDataRoamingAccess;

    iput p2, p0, Lcom/android/phone/GlobalDataRoamingAccess$-android_view_View_createOptionView_int_position_android_view_ViewGroup_parent_LambdaImpl0;->val$position:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/GlobalDataRoamingAccess$-android_view_View_createOptionView_int_position_android_view_ViewGroup_parent_LambdaImpl0;->val$this:Lcom/android/phone/GlobalDataRoamingAccess;

    iget v1, p0, Lcom/android/phone/GlobalDataRoamingAccess$-android_view_View_createOptionView_int_position_android_view_ViewGroup_parent_LambdaImpl0;->val$position:I

    invoke-virtual {v0, v1, p1}, Lcom/android/phone/GlobalDataRoamingAccess;->-com_android_phone_GlobalDataRoamingAccess_lambda$1(ILandroid/view/View;)V

    return-void
.end method
