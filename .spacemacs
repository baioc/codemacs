;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused
   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t
   ;; If non-nil layers with lazy install support are lazy installed.
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     emacs-lisp
     better-defaults
     helm
     auto-completion
     semantic
     syntax-checking
     org
     pandoc
     latex
     html
     markdown
     git
     version-control
     ;; c-c++
     ;; python
     ;; java
     ;; plantuml
     ;; octave
     ;; scheme
     ;; asm
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages '(
                                      drag-stuff
                                      multiple-cursors
                                      )
   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()
   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '()
   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and uninstall any
   ;; unused packages as well as their unused dependencies.
   ;; `used-but-keep-unused' installs only the used packages but won't uninstall
   ;; them if they become unused. `all' installs *all* packages supported by
   ;; Spacemacs and never uninstall them. (default is `used-only')
   dotspacemacs-install-packages 'used-but-keep-unused))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https nil
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   dotspacemacs-elpa-timeout 5
   ;; If non nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update nil
   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'.
   dotspacemacs-elpa-subdirectory nil
   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'vim
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official
   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `bookmarks' `projects' `agenda' `todos'."
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   dotspacemacs-startup-lists '(
                                (projects . 5)
                                (recents . 7)
                                )
   ;; True if the home buffer should respond to resize events.
   dotspacemacs-startup-buffer-responsive t
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(
                         monokai
                         spacemacs-dark
                         ;; deeper-blue
                         spacemacs-light
                         adwaita
                         )
   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
   ;; quickly tweak the mode-line size to make separators look not too crappy.
   dotspacemacs-default-font '("Fira Code"
                               :family "Fira Code"
                               :size 16
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The key used for Emacs commands (M-x) (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"
   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m")
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs C-i, TAB and C-m, RET.
   ;; Setting it to a non-nil value, allows for separate commands under <C-i>
   ;; and TAB or <C-m> and RET.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil
   ;; If non nil `Y' is remapped to `y$' in Evil states. (default nil)
   dotspacemacs-remap-Y-to-y$ nil
   ;; If non-nil, the shift mappings `<' and `>' retain visual state if used
   ;; there. (default t)
   dotspacemacs-retain-visual-state-on-shift t
   ;; If non-nil, J and K move lines up and down when in visual mode.
   ;; (default nil)
   dotspacemacs-visual-line-move-text nil
   ;; If non nil, inverse the meaning of `g' in `:substitute' Evil ex-command.
   ;; (default nil)
   dotspacemacs-ex-substitute-global nil
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"
   ;; If non nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil
   ;; If non nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil
   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5
   ;; If non nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; Controls fuzzy matching in helm. If set to `always', force fuzzy matching
   ;; in all non-asynchronous sources. If set to `source', preserve individual
   ;; source settings. Else, disable fuzzy matching in all sources.
   ;; (default 'always)
   dotspacemacs-helm-use-fuzzy 'always
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-transient-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.2
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup t
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t
   ;; If non nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; Control line numbers activation.
   ;; If set to `t' or `relative' line numbers are turned on in all `prog-mode' and
   ;; `text-mode' derivatives. If set to `relative', line numbers are relative.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; (default nil)
   dotspacemacs-line-numbers t
   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc…
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed'to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup 'trailing
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in
`dotspacemacs/user-config' first."
  )

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."
  ;; Fira Code Configuration
  ;; https://github.com/tonsky/FiraCode/wiki/Emacs-instructions#using-prettify-symbols
  (defun fira-code-mode--make-alist (list)
    "Generate prettify-symbols alist from LIST."
    (let ((idx -1))
      (mapcar
       (lambda (s)
         (setq idx (1+ idx))
         (let* ((code (+ #Xe100 idx))
                (width (string-width s))
                (prefix ())
                (suffix '(?\s (Br . Br)))
                (n 1))
           (while (< n width)
             (setq prefix (append prefix '(?\s (Br . Bl))))
             (setq n (1+ n)))
           (cons s (append prefix suffix (list (decode-char 'ucs code))))))
       list)))

  (defconst fira-code-mode--ligatures
    '("www" "**" "***" "**/" "*>" "*/" "\\\\" "\\\\\\"
      "{-" "[]" "::" ":::" ":=" "!!" "!=" "!==" "-}"
      "--" "---" "-->" "->" "->>" "-<" "-<<" "-~"
      "#{" "#[" "##" "###" "####" "#(" "#?" "#_" "#_("
      ".-" ".=" ".." "..<" "..." "?=" "??" ";;" "/*"
      "/**" "/=" "/==" "/>" "//" "///" "&&" "||" "||="
      "|=" "|>" "^=" "$>" "++" "+++" "+>" "=:=" "=="
      "===" "==>" "=>" "=>>" "<=" "=<<" "=/=" ">-" ">="
      ">=>" ">>" ">>-" ">>=" ">>>" "<*" "<*>" "<|" "<|>"
      "<$" "<$>" "<!--" "<-" "<--" "<->" "<+" "<+>" "<="
      "<==" "<=>" "<=<" "<>" "<<" "<<-" "<<=" "<<<" "<~"
      "<~~" "</" "</>" "~@" "~-" "~=" "~>" "~~" "~~>" "%%"
      "x" ":" "+" "+" "*"))

  (defvar fira-code-mode--old-prettify-alist)

  (defun fira-code-mode--enable ()
    "Enable Fira Code ligatures in current buffer."
    (setq-local fira-code-mode--old-prettify-alist prettify-symbols-alist)
    (setq-local prettify-symbols-alist (append (fira-code-mode--make-alist fira-code-mode--ligatures) fira-code-mode--old-prettify-alist))
    (prettify-symbols-mode t))

  (defun fira-code-mode--disable ()
    "Disable Fira Code ligatures in current buffer."
    (setq-local prettify-symbols-alist fira-code-mode--old-prettify-alist)
    (prettify-symbols-mode -1))

  (define-minor-mode fira-code-mode
    "Fira Code ligatures minor mode"
    :lighter " Fira Code"
    (setq-local prettify-symbols-unprettify-at-point 'right-edge)
    (if fira-code-mode
        (fira-code-mode--enable)
      (fira-code-mode--disable)))

  (defun fira-code-mode--setup ()
    "Setup Fira Code Symbols"
    (set-fontset-font t '(#Xe100 . #Xe16f) "Fira Code Symbol"))

  (provide 'fira-code-mode)


  ;; Linux Kernel Style
  ;; https://www.kernel.org/doc/html/v4.10/process/coding-style.html#indentation
  (defun c-lineup-arglist-tabs-only (ignored)
    "Line up argument lists by tabs, not spaces"
    (let* ((anchor (c-langelem-pos c-syntactic-element))
           (column (c-langelem-2nd-pos c-syntactic-element))
           (offset (- (1+ column) anchor))
           (steps (floor offset c-basic-offset)))
      (* (max steps 1)
         c-basic-offset)))

  (add-hook 'c-mode-common-hook
    (lambda ()
      ;; Add kernel style
      (c-add-style
       "linux-tabs-only"
       '("linux" (c-offsets-alist
                  (arglist-cont-nonempty
                   c-lineup-gcc-asm-reg
                   c-lineup-arglist-tabs-only))))))


  ;; Recherche Reproductible MOOC, emacs version
  ;; https://www.fun-mooc.fr/courses/course-v1:inria+41016+session02/info
  ;; recommended configuration
  ;; https://learninglab.gitlabpages.inria.fr/mooc-rr/mooc-rr-ressources/module2/ressources/rr_org_archive.tgz
  (dolist (pkg '(
                 auctex
                 htmlize
                 ))
    (when (not (package-installed-p pkg))
      (package-install pkg)))

  (require 'org)

  (setq frame-title-format
        '("Emacs - " (buffer-file-name "%f"
                                       (dired-directory dired-directory "%b"))))

  (global-font-lock-mode t)

  (line-number-mode 1)
  (column-number-mode 1)

  (load-library "paren")
  (show-paren-mode 1)
  (transient-mark-mode t)
  (require 'paren)

  (defalias 'yes-or-no-p 'y-or-n-p)

  (set-terminal-coding-system 'utf-8)
  (set-keyboard-coding-system 'utf-8)
  (prefer-coding-system 'utf-8)

  (cua-mode t) ;; some Common User Access keys (not really though)

  (global-set-key [f5] '(lambda () (interactive) (revert-buffer nil t nil)))

  (global-set-key (kbd "C-x g") 'magit-status)
  (global-set-key (kbd "C-x M-g") 'magit-dispatch-popup)
  ;; (global-magit-file-mode 1)

  (defun auto-fill-mode-on () (TeX-PDF-mode 1))
  (add-hook 'tex-mode-hook 'TeX-PDF-mode-on)
  (add-hook 'latex-mode-hook 'TeX-PDF-mode-on)
  (setq TeX-PDF-mode t)

  (defun auto-fill-mode-on () (auto-fill-mode 1))
  (add-hook 'text-mode-hook 'auto-fill-mode-on)
  (add-hook 'emacs-lisp-mode 'auto-fill-mode-on)
  (add-hook 'tex-mode-hook 'auto-fill-mode-on)
  (add-hook 'latex-mode-hook 'auto-fill-mode-on)

  (setq org-directory "~/org/")

  (setq org-hide-leading-stars t)
  (setq org-alphabetical-lists t)
  (setq org-src-fontify-natively t)  ;; you want this to activate coloring in blocks
  (setq org-src-tab-acts-natively t) ;; you want this to have completion in blocks
  (setq org-hide-emphasis-markers t) ;; to hide the *,=, or / markers
  (setq org-pretty-entities t)       ;; to have \alpha, \to and others display as utf8 http://orgmode.org/manual/Special-symbols.html

  (global-set-key "\C-cl" 'org-store-link)
  (global-set-key "\C-cc" 'org-capture)
  (global-set-key (kbd "C-c a") 'org-agenda)
  (define-key global-map "\C-cl" 'org-store-link)
  (define-key global-map (kbd "C-c a") 'org-agenda)
  (global-set-key "\C-cb" 'org-iswitchb)
  (setq org-default-notes-file "~/org/notes.org")
  (define-key global-map "\C-cd" 'org-capture)
  (setq org-capture-templates (quote (("t" "Todo" entry (file+headline "~/org/liste.org" "Tasks") "* TODO %?
  %i
  %a" :prepend t) ("j" "Journal" entry (file+datetree "~/org/journal.org") "* %?
Entered on %U
  %i
  %a"))))

  (setq org-agenda-include-all-todo t)
  (setq org-agenda-include-diary t)

  (global-set-key (kbd "C-c d") 'insert-date)
  (defun insert-date (prefix)
    "Insert the current date. With prefix-argument, use ISO format. With
   two prefix arguments, write out the day and month name."
    (interactive "P")
    (let ((format (cond
                   ((not prefix) "** %Y-%m-%d")
                   ((equal prefix '(4)) "[%Y-%m-%d]"))))
      (insert (format-time-string format))))

  (global-set-key (kbd "C-c t") 'insert-time-date)
  (defun insert-time-date (prefix)
    "Insert the current date. With prefix-argument, use ISO format. With
   two prefix arguments, write out the day and month name."
    (interactive "P")
    (let ((format (cond
                   ((not prefix) "[%H:%M:%S; %d.%m.%Y]")
                   ((equal prefix '(4)) "[%H:%M:%S; %Y-%m-%d]"))))
      (insert (format-time-string format))))

  (global-set-key (kbd "C-c l") 'org-store-link)

  (global-set-key (kbd "C-c <up>") 'outline-up-heading)
  (global-set-key (kbd "C-c <left>") 'outline-previous-visible-heading)
  (global-set-key (kbd "C-c <right>") 'outline-next-visible-heading)

  ;; In org-mode 9 you need to have #+PROPERTY: header-args :eval never-export
  ;; in the beginning or your document to tell org-mode not to evaluate every
  ;; code block every time you export.
  (setq org-confirm-babel-evaluate nil) ;; Do not ask for confirmation all the time!!

  (org-babel-do-load-languages
   'org-babel-load-languages
   '(
     (shell . t)
     (python . t)
     ;; (R . t)
     (ruby . t)
     (ocaml . t)
     (ditaa . t)
     (dot . t)
     (octave . t)
     (sqlite . t)
     (perl . t)
     (screen . t)
     (plantuml . t)
     (lilypond . t)
     (org . t)
     (makefile . t)
     (C . t)
     ))
  (setq org-src-preserve-indentation t)

  (setq rrmooc/new-org-templates (version<= "9.2" (org-version)))
  (when  rrmooc/new-org-templates
    (require 'org-tempo))

  (require 'subr-x)
  (defun rrmooc/add-org-template (old-style-template)
    (add-to-list 'org-structure-template-alist
                 (if rrmooc/new-org-templates
                     (cons
                      (first old-style-template)
                      (string-trim-right (substring (second old-style-template) 8 -9)))
                   old-style-template)))

  (unless rrmooc/new-org-templates
    ;; this template is predefined in the new templating system
    (rrmooc/add-org-template
     '("s" "#+begin_src ?\n\n#+end_src" "<src lang=\"?\">\n\n</src>")))

  (rrmooc/add-org-template
   '("m" "#+begin_src emacs-lisp\n\n#+end_src" "<src lang=\"emacs-lisp\">\n\n</src>"))

  (rrmooc/add-org-template
   '("r" "#+begin_src R :results output :session *R* :exports both\n\n#+end_src" "<src lang=\"R\">\n\n</src>"))

  (rrmooc/add-org-template
   '("R" "#+begin_src R :results output graphics :file (org-babel-temp-file \"figure\" \".png\") :exports both :width 600 :height 400 :session *R* \n\n#+end_src" "<src lang=\"R\">\n\n</src>"))

  (rrmooc/add-org-template
   '("RR" "#+begin_src R :results output graphics :file  (org-babel-temp-file (concat (file-name-directory (or load-file-name buffer-file-name)) \"figure-\") \".png\") :exports both :width 600 :height 400 :session *R* \n\n#+end_src" "<src lang=\"R\">\n\n</src>"))

  (rrmooc/add-org-template
   '("p" "#+begin_src python :results output :exports both\n\n#+end_src" "<src lang=\"python\">\n\n</src>"))

  (rrmooc/add-org-template
   '("P" "#+begin_src python :results output :session :exports both\n\n#+end_src" "<src lang=\"python\">\n\n</src>"))

  (rrmooc/add-org-template
   '("PP" "#+begin_src python :results file :session :var matplot_lib_filename=(org-babel-temp-file \"figure\" \".png\") :exports both\nimport matplotlib.pyplot as plt\n\nimport numpy\nx=numpy.linspace(-15,15)\nplt.figure(figsize=(10,5))\nplt.plot(x,numpy.cos(x)/x)\nplt.tight_layout()\n\nplt.savefig(matplot_lib_filename)\nmatplot_lib_filename\n#+end_src" "<src lang=\"python\">\n\n</src>"))

  (rrmooc/add-org-template
   '("b" "#+begin_src shell :results output :exports both\n\n#+end_src" "<src lang=\"sh\">\n\n</src>"))

  (rrmooc/add-org-template
   '("B" "#+begin_src shell :session *shell* :results output :exports both \n\n#+end_src" "<src lang=\"sh\">\n\n</src>"))

  (rrmooc/add-org-template
   '("g" "#+begin_src dot :results output graphics :file \"/tmp/graph.pdf\" :exports both
digraph G {
node [color=black,fillcolor=white,shape=rectangle,style=filled,fontname=\"Helvetica\"];
A[label=\"A\"]
B[label=\"B\"]
A->B
}\n#+end_src" "<src lang=\"dot\">\n\n</src>"))

  (global-set-key (kbd "C-c S-t") 'org-babel-execute-subtree)

  (add-hook 'org-babel-after-execute-hook 'org-display-inline-images)
  (add-hook 'org-mode-hook 'org-display-inline-images)
  (add-hook 'org-mode-hook 'org-babel-result-hide-all)

  (setq python-shell-completion-native-enable nil)


  ;; STARTUP
  (setq powerline-default-separator nil) ;; remove weird separators
  (spacemacs/toggle-vi-tilde-fringe-off) ;; remove ~
  (xterm-mouse-mode -1) ;; allow mouse selection
  (setq-default indent-tabs-mode t) ;; by default, indent with tabs
  (setq tab-width 4) ;; better
  ;; (global-set-key (kbd "C-S-z") 'evil-lisp-state-undo-tree-redo)
  ;; (global-set-key (kbd "C-y") 'evil-lisp-state-undo-tree-redo)
  ;; (global-set-key (kbd "C-s") 'evil-write) ;; save current file
  (global-set-key (kbd "C-=") 'zoom-frm-in)
  (global-set-key (kbd "C--") 'zoom-frm-out)
  ;; (global-set-key (kbd "C-<wheel-up>") 'zoom-frm-in)
  ;; (global-set-key (kbd "C-<wheel-down>") 'zoom-frm-out)
  (spacemacs/toggle-line-numbers-on)
  ;; (global-set-key (kbd "<tab>") 'indent-rigidly-right-to-tab-stop)
  ;; (global-set-key (kbd "S-<tab>") 'indent-rigidly-left-to-tab-stop)
  ;; (global-set-key (kbd "C-/") 'evilnc-comment-or-uncomment-lines)
  (drag-stuff-global-mode 1) ;; enable moving lines, regions and words
  (drag-stuff-define-keys) ;; ... using normal keybindings
  (set-fill-column 80)
  (fci-mode 1) ;; show margin indicator
  ;; (spacemacs/toggle-highlight-long-lines-globally-on)
  (spacemacs/toggle-auto-fill-mode-off)
  (spacemacs/toggle-truncate-lines-off)
  (spacemacs/toggle-visual-line-navigation-on)
  (global-set-key (kbd "C-g") 'goto-line)
  (global-set-key (kbd "<C-tab>") 'evil-window-next)
  (global-set-key (kbd "<C-iso-lefttab>") 'evil-window-prev)
  (global-set-key (kbd "<f9>") 'split-window-right-and-focus)
  ;; (global-set-key (kbd "C-n") (kbd "<f9> SPC b n i")) ;; open new window
  ;; (global-set-key (kbd "C-w") 'kill-buffer-and-window)
  ;; (global-set-key (kbd "C-S-t") 'winner-undo) ;; restore window
  ;; (global-set-key (kbd "C-S-q") (kbd "SPC q q")) ;; quit emacs
  (global-set-key (kbd "<f12>") (kbd ", g g")) ;; jump to definition
  (global-set-key (kbd "C-<f12>") (kbd "<f9> <f12>")) ;; open definition to the right
  (global-set-key (kbd "C-`") (kbd "<f9> :term RET RET")) ;; open terminal in new window
  (global-set-key (kbd "C-<f2>") 'srefactor-refactor-at-point) ;; smart refactor
  ;; multi-cursor keybindings
  (global-unset-key (kbd "M-<down-mouse-1>"))
  (global-set-key (kbd "M-<mouse-1>") 'mc/add-cursor-on-click)
  ;; (global-set-key (kbd "C-S-<down>") 'mc/mark-next-lines)
  ;; (global-set-key (kbd "C-S-<up>") 'mc/mark-previous-lines)
  (global-set-key (kbd "<f6>") 'mc/edit-beginnings-of-lines)
  (eval-after-load "markdown-mode"
    '(define-key markdown-mode-map (kbd "C-S-v") 'markdown-live-preview-mode))
  (blink-cursor-mode 1)
  (fira-code-mode) ;; enable code ligatures
  ;; (spacemacs/toggle-mode-line-battery-on)
  (spacemacs/toggle-display-time-on)
)

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
