/*
 *  Copyright (c) 2018-present, Facebook, Inc.
 *  All rights reserved.
 *
 *  This source code is licensed under the MIT license found in the
 *  LICENSE file in the root directory of this source tree.
 *
 */

namespace Facebook\HackTest;

enum ExitCode: int as int {
  SUCCESS = 0;
  FAILURE = 1;
  ERROR = 2;
}