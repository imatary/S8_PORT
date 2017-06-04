.class final Lcom/sec/game/gamecast/common/utility/PermissionUtil$1;
.super Ljava/lang/Object;
.source "PermissionUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/game/gamecast/common/utility/PermissionUtil;->showRequestPermissions(Landroid/app/Activity;[Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/game/gamecast/common/utility/PermissionUtil$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/PermissionUtil$1;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/game/gamecast/common/utility/PermissionUtil;->gotoPermission_SettingActivity(Landroid/content/Context;)V

    return-void
.end method
